import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/core/result/result_utils.dart';
import 'package:travela/features/property_search/data/mappers/property_mapper.dart';
import 'package:travela/features/property_search/data/models/property_stream_event_dto.dart';
import 'package:travela/features/property_search/domain/entities/search_metadata.dart';
import 'package:travela/features/property_search/domain/entities/search_stream_event.dart';

/// Maps stream DTO events to Domain [SearchStreamEvent]. Keeps parsing and
/// transport concerns inside the Data layer.
Either<Failure, SearchStreamEvent> mapStreamDtoToDomain(
  PropertyStreamEventDto dto,
) {
  try {
    return Right<Failure, SearchStreamEvent>(
      dto.map(
        metadata: (PropertyStreamEventMetaDto m) => SearchStreamEvent.metadata(
          SearchMetadata(
            totalCount: m.meta.totalCount,
            page: m.meta.pagination?.page,
            totalPages: m.meta.pagination?.totalPage,
          ),
        ),
        item: (PropertyStreamEventItemDto it) =>
            SearchStreamEvent.property(it.item.toDomain()),
        done: (PropertyStreamEventDoneDto d) =>
            const SearchStreamEvent.completed(),
        error: (PropertyStreamEventErrorDto e) => SearchStreamEvent.failure(
          ServerFailure(
            message: e.error.message,
            code: e.error.code?.toString(),
          ),
        ),
      ),
    );
  } catch (e) {
    return Left<Failure, SearchStreamEvent>(mapExceptionToFailure(e));
  }
}
