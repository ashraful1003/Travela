import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:travela/features/property_search/domain/entities/search_metadata.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/core/errors/failures.dart';

part 'search_stream_event.freezed.dart';

/// Sealed union representing progressive events emitted during a streaming
/// property search.
///
/// Events:
/// - metadata: initial or incremental search metadata (e.g., search id,
///   estimated totals).
/// - property: a single Property item streamed from the backend.
/// - completed: marker that the backend finished sending items for this search.
/// - failure: an event-level representation of a non-fatal failure.
///
/// Note on failures: the project standard for Domain results is
/// `Either<Failure, T>`. Stream-based repositories return
/// `Stream<Either<Failure, SearchStreamEvent>>` where a Left(Failure)
/// indicates a stream-level fatal error. The `failure` union variant exists
/// to represent event-scoped failures when an implementation prefers to
/// encode them as part of the event stream rather than using the Left side.
@freezed
class SearchStreamEvent with _$SearchStreamEvent {
  const factory SearchStreamEvent.metadata(SearchMetadata metadata) = SearchStreamMetadata;
  const factory SearchStreamEvent.property(Property property) = SearchStreamProperty;
  const factory SearchStreamEvent.completed() = SearchStreamCompleted;
  const factory SearchStreamEvent.failure(Failure failure) = SearchStreamFailure;
}
