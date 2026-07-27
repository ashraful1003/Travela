import 'package:travela/core/errors/cache_exception.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/errors/network_exception.dart';
import 'package:travela/core/errors/parsing_exception.dart';
import 'package:travela/core/errors/server_exception.dart';
import 'package:travela/core/result/either.dart';

/// Type alias for readability: Result is an Either whose left side is [Failure]
/// and right side is the success value.
typedef Result<T> = Either<Failure, T>;

/// Convenience constructors
Result<T> success<T>(T value) => Right<Failure, T>(value);

Result<T> failure<T>(Failure f) => Left<Failure, T>(f);

/// Helper to map exceptions to Failures. Keep mapping centralized here so
/// repositories and data layers can reuse it.
Failure mapExceptionToFailure(Object e) {
  if (e is ServerException) {
    return ServerFailure(message: e.message, code: e.statusCode?.toString());
  }
  if (e is NetworkException) return const NetworkFailure();
  if (e is CacheException) return const CacheFailure();
  if (e is ParsingException) {
    return const ValidationFailure(message: 'Parsing error');
  }
  return const UnknownFailure();
}
