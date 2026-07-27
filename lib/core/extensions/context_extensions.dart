import 'package:flutter/material.dart';

/// Small BuildContext helpers used across the app.
extension ContextExtensions on BuildContext {
  /// Convenience to access MediaQuery size.
  Size get screenSize => MediaQuery.of(this).size;

  /// Convenience to access Theme.
  ThemeData get theme => Theme.of(this);
}
