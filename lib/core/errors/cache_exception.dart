/// Exception thrown when local cache operations fail.
class CacheException implements Exception {
  /// Optional message describing the cache error.
  final String message;

  const CacheException([this.message = 'Cache error']);

  @override
  String toString() => 'CacheException: $message';
}
