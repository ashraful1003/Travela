import 'package:logger/logger.dart' as pkg;
import 'package:travela/core/logger/logger_interface.dart';

/// Concrete logger implementation that wraps the `logger` package. Use the
/// [LoggerInterface] abstraction across the codebase instead of this class.
class AppLoggerImpl implements LoggerInterface {
  final pkg.Logger _logger;

  AppLoggerImpl({pkg.Logger? logger}) : _logger = logger ?? pkg.Logger();

  @override
  void debug(String message) => _logger.d(message);

  @override
  void error(String message, [Object? error, StackTrace? stackTrace]) => _logger.e(message, error, stackTrace);

  @override
  void info(String message) => _logger.i(message);

  @override
  void warn(String message) => _logger.w(message);
}
