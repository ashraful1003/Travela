/// Exception representing an unknown/unexpected error.
class UnknownException implements Exception {
  final Object? error;
  final StackTrace? stackTrace;

  const UnknownException([this.error, this.stackTrace]);

  @override
  String toString() => 'UnknownException: ${error ?? "unknown"}';
}
