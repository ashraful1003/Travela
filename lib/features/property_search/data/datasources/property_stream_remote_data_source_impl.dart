import 'dart:convert';

import 'package:travela/core/network/stream_client.dart';
import 'package:travela/features/property_search/data/datasources/property_stream_remote_data_source.dart';
import 'package:travela/features/property_search/data/models/property_stream_done_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_error_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_event_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_item_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_meta_dto.dart';
import 'package:travela/features/property_search/domain/entities/price_range.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';

/// Implementation that uses [StreamClient] to connect to the SSE endpoint and
/// parse incoming events into DTOs.
///
/// Error handling: individual malformed frames are surfaced as an
/// event-level [PropertyStreamEventDto.error] without ending the stream;
/// terminal server events (`done`, `error`) end the stream; transport
/// failures and unexpected stream closure are also surfaced as a
/// [PropertyStreamEventDto.error] so the Repository never sees an unhandled
/// stream exception.
class PropertyStreamRemoteDataSourceImpl
    implements PropertyStreamRemoteDataSource {
  static const String _endpoint = '/api/search/stream';

  final StreamClient _streamClient;

  PropertyStreamRemoteDataSourceImpl(this._streamClient);

  @override
  Stream<PropertyStreamEventDto> streamProperties(
    SearchCriteria criteria,
  ) async* {
    final Stream<SseEvent> raw = _streamClient.sse(
      _endpoint,
      queryParameters: _buildQueryParameters(criteria),
    );

    bool sawTerminalEvent = false;

    try {
      await for (final SseEvent ev in raw) {
        if (ev.data.isEmpty) {
          continue;
        }

        final PropertyStreamEventDto dto = _parseEvent(ev);
        yield dto;

        if (dto is PropertyStreamEventDoneDto ||
            dto is PropertyStreamEventErrorDto) {
          sawTerminalEvent = true;
          return;
        }
      }

      if (!sawTerminalEvent) {
        yield const PropertyStreamEventDto.error(
          PropertyStreamErrorDto(message: 'Stream closed unexpectedly'),
        );
      }
    } catch (e) {
      // Transport-level failure (connection refused, timeout, dropped
      // connection, etc.). Surface as a DTO instead of letting the stream
      // crash so higher layers can map it to a domain Failure.
      yield PropertyStreamEventDto.error(
        PropertyStreamErrorDto(message: 'Stream connection failed: $e'),
      );
    }
  }

  /// Parses a single [SseEvent] into a [PropertyStreamEventDto].
  ///
  /// Malformed JSON or a payload that doesn't match the expected shape for
  /// its event type is reported as an event-level error DTO rather than
  /// throwing, so a single bad frame doesn't take down the whole stream.
  PropertyStreamEventDto _parseEvent(SseEvent ev) {
    try {
      final Map<String, dynamic> decoded =
          json.decode(ev.data) as Map<String, dynamic>;

      switch (ev.event) {
        case 'meta':
          return PropertyStreamEventDto.metadata(
            PropertyStreamMetaDto.fromJson(decoded),
          );
        case 'item':
          return PropertyStreamEventDto.item(
            PropertyStreamItemDto.fromJson(decoded),
          );
        case 'done':
          return PropertyStreamEventDto.done(
            PropertyStreamDoneDto.fromJson(decoded),
          );
        case 'error':
          return PropertyStreamEventDto.error(
            PropertyStreamErrorDto.fromJson(decoded),
          );
        default:
          return PropertyStreamEventDto.error(
            PropertyStreamErrorDto(
              message: 'Unknown SSE event type: ${ev.event}',
            ),
          );
      }
    } catch (e) {
      return PropertyStreamEventDto.error(
        PropertyStreamErrorDto(message: 'Malformed SSE event: $e'),
      );
    }
  }

  /// Builds the query parameters for `GET /api/search/stream`, matching the
  /// param names documented by the API (see the take-home task spec) - these
  /// are deliberately not the same names used by [SearchCriteria]/domain
  /// entities, which stay transport-agnostic.
  Map<String, dynamic> _buildQueryParameters(SearchCriteria criteria) {
    final Map<String, dynamic> query = <String, dynamic>{};

    final SelectedLocation? location = criteria.location;
    if (location != null) {
      query['location_id'] = location.id;
      query['location'] = '${location.lat},${location.lng}';
      query['address_name'] = location.name;
      if (location.within != null) {
        query['within'] = location.within;
      }
      if (location.tier1 != null) {
        query['tier_1'] = location.tier1;
      }
      if (location.tier2 != null) {
        query['tier_2'] = location.tier2;
      }
    }

    if (criteria.checkIn != null) {
      query['from'] = _formatDate(criteria.checkIn!);
    }
    if (criteria.checkOut != null) {
      query['to'] = _formatDate(criteria.checkOut!);
    }

    query['guest'] = criteria.guestInfo.adults;
    if (criteria.guestInfo.children > 0) {
      query['child'] = criteria.guestInfo.children;
    }
    if (criteria.guestInfo.infants > 0) {
      query['infant'] = criteria.guestInfo.infants;
    }

    final PriceRange? priceRange = criteria.priceRange;
    if (priceRange != null) {
      query['price'] =
          '${priceRange.min.round()}-${priceRange.max.round()}';
    }

    if (criteria.query != null && criteria.query!.isNotEmpty) {
      query['q'] = criteria.query;
    }

    query['page'] = criteria.page;
    query['per_page'] = criteria.pageSize;

    return query;
  }

  String _formatDate(DateTime date) {
    final String y = date.year.toString().padLeft(4, '0');
    final String m = date.month.toString().padLeft(2, '0');
    final String d = date.day.toString().padLeft(2, '0');
    return '$y-$m-$d';
  }
}
