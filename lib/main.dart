import 'package:flutter/material.dart';
import 'package:travela/app.dart';
import 'package:travela/core/di/service_locator.dart';

/// Application entrypoint. Initializes application-wide dependencies and
/// starts the Flutter app. Keep this file minimal: no business logic here.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize application-level dependencies (GetIt). Feature-level DI
  // will be registered later by feature modules.
  await setupDependencies();

  runApp(const App());
}
