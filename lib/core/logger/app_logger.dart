import 'package:logger/logger.dart';

/// Simple application logger wrapper used across the app. This abstraction
/// allows swapping the underlying logging implementation in tests or CI.
class AppLogger {
  final Logger _logger = Logger();

  /// Creates an [AppLogger].
  AppLogger();

  /// Log an informational message.
  void info(String message) => _logger.i(message);

  /// Log a warning message.
  void warn(String message) => _logger.w(message);

  /// Log an error with optional error object and stack.
  void error(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.e(message, error, stackTrace);
}
