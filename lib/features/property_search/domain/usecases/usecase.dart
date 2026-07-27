import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';

/// Base UseCase contract for synchronous operations returning a single
/// result wrapped in [Either]<[Failure], T>.
///
/// Implementations should provide a single public `call` method that
/// orchestrates the operation by delegating to Repository interfaces.
abstract class UseCase<T, Params> {
  /// Execute the use case with [params].
  Future<Either<Failure, T>> call(Params params);
}
