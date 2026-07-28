import 'package:travela/features/property_search/data/models/property_dto.dart';
import 'package:travela/features/property_search/data/models/property_list_dto.dart';

/// Remote data source contract for property search related network calls.
///
/// Responsibility:
/// - Define methods that fetch raw DTOs from the backend. Implementations
///   must depend only on ApiClient and must not perform mapping to Domain
///   entities.
abstract class PropertyRemoteDataSource {
  /// Fetch a paginated list of properties from the remote API.
  ///
  /// [queryParameters] are forwarded to the API as query params (e.g.
  /// `location`, `page`, `page_size`, `min_price`, `max_price`).
  ///
  /// Returns a [PropertyListDto] representing the server response.
  Future<PropertyListDto> fetchProperties({
    Map<String, dynamic>? queryParameters,
  });

  /// Fetch a single property by its remote identifier.
  ///
  /// Returns a [PropertyDto] on success.
  Future<PropertyDto> fetchPropertyById(String id);
}
