import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';

/// Base contract for streaming use cases that emit a sequence of results.
///
/// The stream yields [Either]<[Failure], T> to allow consumers to react to
/// transient errors while preserving the stream semantics.
abstract class StreamUseCase<T, Params> {
  /// Execute the use case and return a [Stream] of results.
  Stream<Either<Failure, T>> call(Params params);
}
