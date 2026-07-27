/// Lightweight logger abstraction used across the app. Prefer depending on this
/// interface so the underlying logging backend can be swapped during tests or
/// CI.
abstract class LoggerInterface {
  /// Log a debug message.
  void debug(String message);

  /// Log an informational message.
  void info(String message);

  /// Log a warning message.
  void warn(String message);

  /// Log an error message with optional error object and stack trace.
  void error(String message, [Object? error, StackTrace? stackTrace]);
}
