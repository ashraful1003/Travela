/// Centralized sizing, spacing and duration constants used across the app.
class Dimens {
  // Spacing
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXL = 32.0;

  // Border radiuses
  static const double borderRadiusSm = 6.0;
  static const double borderRadius = 8.0;
  static const double borderRadiusLg = 12.0;

  // Animation durations
  static const Duration animationShort = Duration(milliseconds: 150);
  static const Duration animationStandard = Duration(milliseconds: 300);
  static const Duration animationLong = Duration(milliseconds: 600);

  // Default pagination
  static const int defaultPage = 1;
  static const int defaultPageSize = 20;

  // Debounce
  static const Duration defaultDebounce = Duration(milliseconds: 300);

  const Dimens._();
}
