import 'dart:convert';

import 'package:travela/core/network/stream_client.dart';
import 'package:travela/features/property_search/data/datasources/property_stream_remote_data_source.dart';
import 'package:travela/features/property_search/data/models/property_stream_done_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_error_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_event_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_item_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_meta_dto.dart';
import 'package:travela/features/property_search/domain/entities/location.dart';
import 'package:travela/features/property_search/domain/entities/price_range.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';

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
  static const String _endpoint = '/api/properties/stream';

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

  /// Builds the query parameters for the streaming search request, mirroring
  /// the parameter mapping used by the non-streaming search endpoint.
  Map<String, dynamic> _buildQueryParameters(SearchCriteria criteria) {
    final Map<String, dynamic> query = <String, dynamic>{};

    if (criteria.query != null && criteria.query!.isNotEmpty) {
      query['q'] = criteria.query;
    }
    if (criteria.checkIn != null) {
      query['check_in'] = criteria.checkIn!.toIso8601String();
    }
    if (criteria.checkOut != null) {
      query['check_out'] = criteria.checkOut!.toIso8601String();
    }

    final Location? location = criteria.location;
    if (location != null) {
      if (location.name.isNotEmpty) {
        query['location'] = location.name;
      } else if (location.latitude != null && location.longitude != null) {
        query['lat'] = location.latitude;
        query['lng'] = location.longitude;
      }
    }

    final PriceRange? priceRange = criteria.priceRange;
    if (priceRange != null) {
      query['min_price'] = priceRange.min;
      query['max_price'] = priceRange.max;
      query['currency'] = priceRange.currency;
    }

    query['adults'] = criteria.guestInfo.adults;
    query['children'] = criteria.guestInfo.children;
    query['infants'] = criteria.guestInfo.infants;

    return query;
  }
}
