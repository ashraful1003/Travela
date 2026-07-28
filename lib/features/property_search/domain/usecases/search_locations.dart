import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';
import 'package:travela/features/property_search/domain/repositories/location_repository.dart';
import 'package:travela/features/property_search/domain/usecases/usecase.dart';

/// UseCase: SearchLocations
class SearchLocations implements UseCase<List<SelectedLocation>, String> {
  final LocationRepository _repository;

  const SearchLocations(this._repository);

  @override
  Future<Either<Failure, List<SelectedLocation>>> call(String query) {
    return _repository.searchLocations(query);
  }
}
