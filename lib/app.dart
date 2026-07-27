import 'package:flutter/material.dart';
import 'package:travela/core/router/app_router.dart';
import 'package:travela/core/theme/app_theme.dart';

/// The root application widget that configures theme, routing and global
/// application-level configuration. Keep business logic out of this file.
class App extends StatelessWidget {
  /// Creates the application root.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travela',
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
    );
  }
}
