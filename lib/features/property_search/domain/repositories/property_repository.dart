import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/domain/entities/search_stream_event.dart';

/// Repository contract that exposes business operations for the Property
/// Search feature.
///
/// Responsibility:
/// - Define capabilities required by the Domain and Presentation layers to
///   search and retrieve property information without revealing any
///   infrastructure details (HTTP, JSON, Dio, DTOs, etc.).
abstract class PropertyRepository {
  /// Search for properties matching [criteria].
  ///
  /// Purpose:
  /// - Perform a business-level property search using domain filters.
  ///
  /// Input:
  /// - [criteria]: Aggregated search filters (location, dates, price,
  ///   guest composition, pagination).
  ///
  /// Output:
  /// - Returns a [Future] that completes with
  ///   [Either]<[Failure], List<[Property]>> where Right contains the list of
  ///   matching Property entities and Left contains a Failure describing why
  ///   the operation failed.
  ///
  /// Business responsibility:
  /// - Encapsulate the search capability; callers should not assume how or
  ///   where results are fetched. Pagination is expressed via [SearchCriteria].
  /// Legacy synchronous search API that returns a completed list of results.
  ///
  /// Implementations MAY keep this for non-streaming consumers. New streaming
  /// clients should use [streamSearchProperties] which supports progressive
  /// result delivery.
  Future<Either<Failure, List<Property>>> searchProperties(
    SearchCriteria criteria,
  );

  /// Stream-based search that progressively emits search lifecycle events.
  ///
  /// Rationale:
  /// - Some backends (SSE) provide results progressively. Exposing a stream
  ///   allows UI layers to render partial results while the search continues.
  /// - The stream emits domain-level events represented by [SearchStreamEvent].
  ///
  /// Output:
  /// - Returns a [Stream] of [Either]<[Failure], [SearchStreamEvent]>.
  ///   - Left(Failure): a stream-level failure (transport or parsing) occured.
  ///   - Right(SearchStreamEvent): a lifecycle event (metadata, property item,
  ///     completion, or event-level failure).
  Stream<Either<Failure, SearchStreamEvent>> streamSearchProperties(
    SearchCriteria criteria,
  ) {
    // Default implementation to preserve backwards compatibility with
    // existing repository implementations. Feature implementations that
    // support streaming should override this method.
    throw UnimplementedError('streamSearchProperties is not implemented by this repository');
  }

  /// Retrieve full details for a single property by its business [id].
  ///
  /// Purpose:
  /// - Provide a way to obtain a single Property for detail screens or
  ///   internal business logic.
  ///
  /// Input:
  /// - [id]: The business identifier of the property (stable across systems).
  ///
  /// Output:
  /// - Returns a [Future] that completes with [Either]<[Failure], [Property]>.
  ///
  /// Business responsibility:
  /// - Abstract detail retrieval; implementation decides whether to read
  ///   from cache, remote source or both.
  Future<Either<Failure, Property>> getPropertyById(String id);
}
