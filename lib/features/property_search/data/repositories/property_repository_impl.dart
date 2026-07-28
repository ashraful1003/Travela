import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/core/result/result_utils.dart';
import 'package:travela/features/property_search/data/datasources/property_stream_remote_data_source.dart';
import 'package:travela/features/property_search/data/mappers/property_stream_mapper.dart';
import 'package:travela/features/property_search/data/models/property_stream_event_dto.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/domain/entities/search_stream_event.dart';
import 'package:travela/features/property_search/domain/repositories/property_repository.dart';

/// Repository implementation for PropertyRepository.
///
/// Responsibility:
/// - Coordinate data retrieval from [PropertyStreamRemoteDataSource], delegate
///   DTO -> Entity conversion to mappers, and convert exceptions into Failure
///   instances returned as an Either result.
class PropertyRepositoryImpl implements PropertyRepository {
  final PropertyStreamRemoteDataSource _streamRemoteDataSource;

  const PropertyRepositoryImpl(this._streamRemoteDataSource);

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
