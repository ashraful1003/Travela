import 'package:travela/core/network/api_client.dart';
import 'package:travela/features/property_search/data/datasources/location_remote_data_source.dart';
import 'package:travela/features/property_search/data/models/popular_location_dto.dart';

class LocationRemoteDataSourceImpl implements LocationRemoteDataSource {
  final ApiClient _apiClient;

  LocationRemoteDataSourceImpl(this._apiClient);

  @override
  Future<List<PopularLocationDto>> fetchPopularLocations(String query) async {
    final Map<String, dynamic> params = <String, dynamic>{'q': query};
    final dynamic response = await _apiClient.get('/api/popular-locations', queryParameters: params);

    if (response is List) {
      return response
          .map((e) => PopularLocationDto.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList();
    }

    // If API returns an object with `data` key
    if (response is Map && response['data'] is List) {
      return (response['data'] as List)
          .map((e) => PopularLocationDto.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList();
    }

    return <PopularLocationDto>[];
  }
}
