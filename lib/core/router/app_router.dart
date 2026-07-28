import 'package:flutter/material.dart';
import 'package:travela/features/property_search/presentation/pages/property_search_page.dart';

/// Centralized application routes.
class AppRoutes {
  /// Home route.
  static const String home = '/';
}

/// Simple router that maps route names to pages. Keep navigation logic here so
/// that features can register their own routes later if needed.
class AppRouter {
  /// Route generator used by [MaterialApp.onGenerateRoute].
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute<void>(builder: (_) => const PropertySearchPage());
      default:
        return MaterialPageRoute<void>(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
