import 'package:flutter/material.dart';
import 'package:travela/app.dart';
import 'package:travela/core/di/service_locator.dart';
import 'package:travela/features/property_search/di/property_di.dart';

/// Application entrypoint. Initializes application-wide dependencies and
/// starts the Flutter app. Keep this file minimal: no business logic here.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize application-level dependencies (GetIt).
  await setupDependencies();

  // Register feature-level dependencies for the Property Search feature.
  await initPropertySearchModule(sl);

  runApp(const App());
}
