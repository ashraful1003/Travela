import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/domain/repositories/property_repository.dart';
import 'package:travela/features/property_search/domain/usecases/usecase.dart';

/// UseCase: SearchProperties
///
/// Purpose:
/// - Execute a business-level property search using [SearchCriteria].
///
/// Responsibility:
/// - Orchestrate calls to [PropertyRepository.searchProperties]. This class is a
///   thin abstraction over the repository to keep Presentation unaware of
///   repository details.
///
/// Parameters:
/// - [criteria]: Domain value object containing filters, pagination and guest
///   information.
///
/// Returns:
/// - [Either]<[Failure], List<[Property]>> delivered through a [Future].
class SearchProperties implements UseCase<List<Property>, SearchCriteria> {
  final PropertyRepository _repository;

  const SearchProperties(this._repository);

  @override
  Future<Either<Failure, List<Property>>> call(SearchCriteria criteria) {
    return _repository.searchProperties(criteria);
  }
}
