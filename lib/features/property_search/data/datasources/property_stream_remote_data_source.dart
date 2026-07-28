import 'package:travela/features/property_search/data/models/property_stream_event_dto.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';

/// Remote data source for server-sent event based property search.
///
/// Responsibility:
/// - Open a streaming connection to the backend and emit immutable DTOs
///   corresponding to stream events (meta, item, done, error).
abstract class PropertyStreamRemoteDataSource {
  Stream<PropertyStreamEventDto> streamProperties(SearchCriteria criteria);
}
