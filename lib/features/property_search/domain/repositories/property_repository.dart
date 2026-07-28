import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/domain/entities/search_stream_event.dart';

/// Repository contract that exposes business operations for the Property
/// Search feature.
///
/// Responsibility:
/// - Define capabilities required by the Domain and Presentation layers to
///   search for properties without revealing any infrastructure details
///   (HTTP, JSON, Dio, DTOs, etc.).
abstract class PropertyRepository {
  /// Stream-based search that progressively emits search lifecycle events
  /// as the backend pushes them over SSE.
  ///
  /// Output:
  /// - Returns a [Stream] of [Either]<[Failure], [SearchStreamEvent]>.
  ///   - Left(Failure): a stream-level failure (transport or parsing) occurred.
  ///   - Right(SearchStreamEvent): a lifecycle event (metadata, property item,
  ///     completion, or event-level failure).
  Stream<Either<Failure, SearchStreamEvent>> streamSearchProperties(
    SearchCriteria criteria,
  );
}
