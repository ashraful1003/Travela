import 'package:get_it/get_it.dart';
import 'package:travela/core/config/environment.dart';
import 'package:travela/core/logger/app_logger.dart';

final GetIt sl = GetIt.instance;

/// Initializes application-wide dependencies and prepares the service locator
/// for feature-level modules to register their own dependencies.
///
/// This method is intentionally lightweight: feature modules should register
/// feature-specific bindings in their own `di/` folders and expose an init
/// function that the app bootstrap can call when needed.
Future<void> setupDependencies() async {
  // Register app-level singletons only if not already registered. Keep this
  // minimal to avoid surprising side-effects during tests.
  if (!sl.isRegistered<Environment>()) {
    sl.registerLazySingleton<Environment>(Environment.new);
  }

  if (!sl.isRegistered<AppLogger>()) {
    sl.registerLazySingleton<AppLogger>(AppLogger.new);
  }

  // No feature-level registrations here. Feature modules should expose init
  // functions that accept [sl] or call GetIt directly.
}
