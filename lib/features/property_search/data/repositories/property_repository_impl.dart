import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/core/result/result_utils.dart';
import 'package:travela/features/property_search/data/datasources/property_remote_data_source.dart';
import 'package:travela/features/property_search/data/datasources/property_stream_remote_data_source.dart';
import 'package:travela/features/property_search/data/mappers/property_mapper.dart';
import 'package:travela/features/property_search/data/mappers/property_stream_mapper.dart';
import 'package:travela/features/property_search/data/models/property_dto.dart';
import 'package:travela/features/property_search/data/models/property_list_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_event_dto.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/domain/entities/search_stream_event.dart';
import 'package:travela/features/property_search/domain/repositories/property_repository.dart';

/// Repository implementation for PropertyRepository.
///
/// Responsibility:
/// - Coordinate data retrieval from [PropertyRemoteDataSource], delegate DTO ->
///   Entity conversion to mappers, and convert exceptions into Failure
///   instances returned as an Either result.
class PropertyRepositoryImpl implements PropertyRepository {
  final PropertyRemoteDataSource _remoteDataSource;
  final PropertyStreamRemoteDataSource _streamRemoteDataSource;

  const PropertyRepositoryImpl(
    this._remoteDataSource,
    this._streamRemoteDataSource,
  );

  @override
  Future<Either<Failure, List<Property>>> searchProperties(
    SearchCriteria criteria,
  ) async {
    try {
      final Map<String, dynamic> queryParams = _buildQueryParams(criteria);
      final PropertyListDto propertyListDto = await _remoteDataSource
          .fetchProperties(queryParameters: queryParams);

      final List<Property> entities = propertyListDto.toDomainList();
      return success<List<Property>>(entities);
    } catch (e) {
      return failure<List<Property>>(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Property>> getPropertyById(String id) async {
    try {
      final PropertyDto propertyDto = await _remoteDataSource.fetchPropertyById(
        id,
      );
      final Property entity = propertyDto.toDomain();
      return success<Property>(entity);
    } catch (e) {
      return failure<Property>(mapExceptionToFailure(e));
    }
  }

  Map<String, dynamic> _buildQueryParams(SearchCriteria c) {
    final Map<String, dynamic> params = <String, dynamic>{};

    if (c.query != null && c.query!.isNotEmpty) {
      params['query'] = c.query;
    }

    // Pagination
    params['page'] = c.page;
    params['page_size'] = c.pageSize;

    // Dates
    if (c.checkIn != null) {
      params['check_in'] = c.checkIn!.toIso8601String();
    }
    if (c.checkOut != null) {
      params['check_out'] = c.checkOut!.toIso8601String();
    }

    // Location: prefer name if available
    if (c.location != null) {
      if (c.location!.name.isNotEmpty) {
        params['location'] = c.location!.name;
      } else if (c.location!.latitude != null &&
          c.location!.longitude != null) {
        params['lat'] = c.location!.latitude;
        params['lng'] = c.location!.longitude;
      }
    }

    // Price
    if (c.priceRange != null) {
      params['min_price'] = c.priceRange!.min;
      params['max_price'] = c.priceRange!.max;
      params['currency'] = c.priceRange!.currency;
    }

    // Guests: guestInfo is non-nullable; use values directly
    params['adults'] = c.guestInfo.adults;
    params['children'] = c.guestInfo.children;
    params['infants'] = c.guestInfo.infants;

    return params;
  }

  @override
  Stream<Either<Failure, SearchStreamEvent>> streamSearchProperties(
    SearchCriteria criteria,
  ) async* {
    // Delegate to the streaming remote data source for DTO events and map
    // each one to a Domain SearchStreamEvent. The whole iteration is guarded
    // so that any exception raised while advancing the underlying stream
    // (not just while processing a single DTO) is converted into
    // Left(Failure) instead of crashing the returned stream.
    final Stream<PropertyStreamEventDto> dtoStream = _streamRemoteDataSource
        .streamProperties(criteria);

    try {
      await for (final PropertyStreamEventDto dto in dtoStream) {
        final Either<Failure, SearchStreamEvent> mapped = mapStreamDtoToDomain(
          dto,
        );
        yield mapped;
        // A Left indicates a stream-level failure; stop streaming.
        if (mapped.isLeft) {
          break;
        }
      }
    } catch (e) {
      yield failure<SearchStreamEvent>(mapExceptionToFailure(e));
    }
  }
}
