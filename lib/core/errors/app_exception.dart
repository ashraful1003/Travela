/// Base exception used inside data layer implementations. Exceptions should be
/// mapped to domain [Failure] objects before reaching presentation.
class AppException implements Exception {
  /// Optional message describing the exception.
  final String? message;

  /// Creates an [AppException].
  const AppException([this.message]);

  @override
  String toString() => 'AppException: ${message ?? "no message"}';
}
