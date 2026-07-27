/// Exception thrown when a server-side error occurs.
class ServerException implements Exception {
  /// Optional message describing the server error.
  final String message;

  /// Optional code returned by the server.
  final int? statusCode;

  const ServerException(this.message, {this.statusCode});

  @override
  String toString() => 'ServerException: $message (statusCode: $statusCode)';
}
