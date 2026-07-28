import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:travela/core/config/environment.dart';
import 'package:travela/core/logger/app_logger_impl.dart';
import 'package:travela/core/logger/logger_interface.dart';
import 'package:travela/core/network/api_client.dart';
import 'package:travela/core/network/api_client_impl.dart';
import 'package:travela/core/network/dio_factory.dart';

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
    // Base URL is compile-time configurable via
    // `--dart-define=API_BASE_URL=https://your.api.host`, so it never
    // silently falls back to an empty string that would make every request
    // malformed. The default below is a placeholder for local development.
    sl.registerLazySingleton<Environment>(
      () => const Environment(
        baseUrl: String.fromEnvironment(
          'API_BASE_URL',
          defaultValue: 'https://api.travela.dev',
        ),
      ),
    );
  }

  if (!sl.isRegistered<LoggerInterface>()) {
    sl.registerLazySingleton<LoggerInterface>(AppLoggerImpl.new);
  }

  // Networking infra
  if (!sl.isRegistered<Dio>()) {
    // Delay import of networking factory and api client until needed to avoid
    // circular import issues at top-level.
    final Environment env = sl.get<Environment>();
    final LoggerInterface logger = sl.get<LoggerInterface>();
    // createDio is defined in core/network/dio_factory.dart
    // and returns a pre-configured Dio instance.
    final Dio dio = createDio(env, logger);
    sl.registerLazySingleton<Dio>(() => dio);
  }

  if (!sl.isRegistered<ApiClient>()) {
    final Dio dio = sl.get<Dio>();
    final LoggerInterface logger = sl.get<LoggerInterface>();
    sl.registerLazySingleton<ApiClient>(() => ApiClientImpl(dio, logger));
  }

  // No feature-level registrations here. Feature modules should expose init
  // functions that accept [sl] or call GetIt directly.
}
