/// Exception thrown when network connectivity fails.
class NetworkException implements Exception {
  /// Optional message describing the network error.
  final String message;

  const NetworkException([this.message = 'Network error']);

  @override
  String toString() => 'NetworkException: $message';
}
