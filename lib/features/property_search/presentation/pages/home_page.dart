import 'package:flutter/material.dart';
import 'package:travela/core/constants/app_strings.dart';

/// Minimal HomePage for the application. No business logic is implemented
/// in this sprint — the page only displays a title centered on screen.
class HomePage extends StatelessWidget {
  /// Creates the home page.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.homeTitle)),
      body: const Center(
        child: Text(
          AppStrings.homeTitle,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
