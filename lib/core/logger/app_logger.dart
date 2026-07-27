import 'package:travela/core/logger/app_logger_impl.dart';
import 'package:travela/core/logger/logger_interface.dart';

export 'app_logger_impl.dart' show AppLoggerImpl;

/// Deprecated wrapper kept for backward compatibility. Prefer depending on
/// [LoggerInterface] and register [AppLoggerImpl] in DI.
@Deprecated('Use LoggerInterface and AppLoggerImpl')
class AppLogger extends AppLoggerImpl implements LoggerInterface {
  AppLogger() : super();
}
