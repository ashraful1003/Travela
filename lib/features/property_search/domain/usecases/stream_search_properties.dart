import 'dart:async';

import 'package:travela/core/result/either.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/features/property_search/domain/repositories/property_repository.dart';
import 'package:travela/features/property_search/domain/entities/search_stream_event.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';

/// Use case that exposes a domain-level stream of progressive search results.
///
/// Why a stream:
/// - Some backends (SSE / event streams) deliver results progressively. By
///   exposing a Stream at the Domain boundary, Presentation layers can render
///   partial results while the server continues to push items.
///
/// Why Domain hides transport details:
/// - The Domain must remain infrastructure free. Callers of this use case don't
///   need to know whether results come from SSE, websockets or another channel.
///   The repository implementation handles transport specifics.
///
/// Output:
/// - A Stream of Either<Failure, SearchStreamEvent> where Right() wraps a
///   SearchStreamEvent (metadata, item, completion, or event-level failure)
///   and Left() indicates a stream-level fatal failure.
class StreamSearchProperties {
  final PropertyRepository _repository;

  StreamSearchProperties(this._repository);

  Stream<Either<Failure, SearchStreamEvent>> call(SearchCriteria criteria) {
    return _repository.streamSearchProperties(criteria);
  }
}
