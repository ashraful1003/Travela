import 'package:travela/core/network/api_client.dart';
import 'package:travela/features/property_search/data/datasources/property_remote_data_source.dart';
import 'package:travela/features/property_search/data/models/property_dto.dart';
import 'package:travela/features/property_search/data/models/property_list_dto.dart';

/// Implementation of [PropertyRemoteDataSource] that uses [ApiClient] to
/// communicate with the backend and returns DTOs.
class PropertyRemoteDataSourceImpl implements PropertyRemoteDataSource {
  final ApiClient _apiClient;

  /// Create a new instance using the provided [ApiClient].
  PropertyRemoteDataSourceImpl(this._apiClient);

  /// Endpoint: GET /properties
  ///
  /// Builds query parameters from [queryParameters] and requests the server.
  /// The response is deserialized into [PropertyListDto].
  @override
  Future<PropertyListDto> fetchProperties({
    Map<String, dynamic>? queryParameters,
  }) async {
    final Map<String, dynamic> json = await _apiClient.get<
        Map<String, dynamic>>(
      '/properties',
      queryParameters: queryParameters,
    );

    return PropertyListDto.fromJson(json);
  }

  /// Endpoint: GET /properties/{id}
  ///
  /// Requests the single property payload and returns [PropertyDto].
  @override
  Future<PropertyDto> fetchPropertyById(String id) async {
    final Map<String, dynamic> json = await _apiClient.get<
        Map<String, dynamic>>('/properties/$id');

    return PropertyDto.fromJson(json);
  }
}
