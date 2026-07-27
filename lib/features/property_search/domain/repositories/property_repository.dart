import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';

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
  Future<Either<Failure, List<Property>>> searchProperties(
    SearchCriteria criteria,
  );

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
