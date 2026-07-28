import 'package:travela/features/property_search/data/models/popular_location_dto.dart';

abstract class LocationRemoteDataSource {
  Future<List<PopularLocationDto>> fetchPopularLocations(String query);
}
