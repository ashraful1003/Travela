import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';

/// Repository contract for location autocomplete.
abstract class LocationRepository {
  Future<Either<Failure, List<SelectedLocation>>> searchLocations(String query);
}
