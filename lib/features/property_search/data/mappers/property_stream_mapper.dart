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
            searchId: m.meta.searchId,
            estimatedTotal: m.meta.estimatedTotal,
            timestamp: m.meta.timestamp != null
                ? DateTime.tryParse(m.meta.timestamp!)
                : null,
          ),
        ),
        item: (PropertyStreamEventItemDto it) =>
            SearchStreamEvent.property(it.item.property.toDomain()),
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
