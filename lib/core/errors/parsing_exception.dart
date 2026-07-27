/// Exception thrown when parsing or serialization fails.
class ParsingException implements Exception {
  /// Optional message describing the parsing error.
  final String message;

  const ParsingException([this.message = 'Parsing error']);

  @override
  String toString() => 'ParsingException: $message';
}
