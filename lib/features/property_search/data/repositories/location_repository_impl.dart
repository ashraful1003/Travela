import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/core/result/result_utils.dart';
import 'package:travela/features/property_search/data/datasources/location_remote_data_source.dart';
import 'package:travela/features/property_search/data/mappers/popular_location_mapper.dart';
import 'package:travela/features/property_search/data/models/popular_location_dto.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';
import 'package:travela/features/property_search/domain/repositories/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationRemoteDataSource _remote;

  LocationRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, List<SelectedLocation>>> searchLocations(String query) async {
    try {
      final List<PopularLocationDto> dtos = await _remote.fetchPopularLocations(query);
      final List<SelectedLocation> entities = dtos.map((PopularLocationDto d) => d.toEntity()).toList();
      return success(entities);
    } catch (e) {
      return failure(mapExceptionToFailure(e));
    }
  }
}
