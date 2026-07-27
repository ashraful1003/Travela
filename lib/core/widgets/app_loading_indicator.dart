import 'package:flutter/material.dart';

/// Global loading indicator used across the app. Keep this widget simple and
/// framework-agnostic so it can be reused by features.
class AppLoadingIndicator extends StatelessWidget {
  /// Creates an [AppLoadingIndicator].
  const AppLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
