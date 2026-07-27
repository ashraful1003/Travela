import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/domain/repositories/property_repository.dart';
import 'package:travela/features/property_search/domain/usecases/usecase.dart';

/// UseCase: GetPropertyDetails
///
/// Purpose:
/// - Retrieve a single Property by its business identifier.
///
/// Responsibility:
/// - Delegate detail retrieval to [PropertyRepository.getPropertyById].
///   This use case may later orchestrate caching or merging strategies but for
///   now remains a thin abstraction over the repository.
///
/// Parameters:
/// - [id]: Business identifier of the property.
///
/// Returns:
/// - [Either]<[Failure], [Property]> delivered through a [Future].
class GetPropertyDetails implements UseCase<Property, String> {
  final PropertyRepository _repository;

  const GetPropertyDetails(this._repository);

  @override
  Future<Either<Failure, Property>> call(String id) {
    return _repository.getPropertyById(id);
  }
}
