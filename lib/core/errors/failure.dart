/// Base class for domain failures. Use specific subclasses to represent
/// recoverable application errors (network, parsing, cache, etc.).
class Failure {
  /// Human-readable message for the failure.
  final String message;

  /// Optional error code.
  final String? code;

  /// Creates a [Failure].
  const Failure({required this.message, this.code});
}
