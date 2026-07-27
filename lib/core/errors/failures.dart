import 'package:travela/core/constants/app_strings_global.dart';

/// Base Failure type used across Domain layer to represent recoverable
/// errors. Failures are preferred over throwing exceptions across layers.
class Failure {
  /// Human-readable message describing the failure.
  final String message;

  /// Optional code for programmatic handling.
  final String? code;

  const Failure({required this.message, this.code});

  @override
  String toString() => 'Failure(message: $message, code: $code)';
}

/// Represents server failures (5xx or API errors).
class ServerFailure extends Failure {
  const ServerFailure({
    super.message = AppStringsGlobal.errorGeneric,
    super.code,
  });
}

/// Network connectivity failure.
class NetworkFailure extends Failure {
  const NetworkFailure({super.message = 'No network connection', super.code});
}

/// Cache-related failure.
class CacheFailure extends Failure {
  const CacheFailure({super.message = 'Cache error', super.code});
}

/// Validation failure for user input.
class ValidationFailure extends Failure {
  const ValidationFailure({required super.message, super.code});
}

/// Unknown/unexpected failure.
class UnknownFailure extends Failure {
  const UnknownFailure({
    super.message = AppStringsGlobal.errorGeneric,
    super.code,
  });
}
