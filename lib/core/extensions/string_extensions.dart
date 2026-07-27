/// Helpful extensions on [String]. Keep extensions generic and safe.
extension StringExtensions on String {
  /// Returns true when the string is null-or-empty after trimming.
  bool get isNullOrEmpty => trim().isEmpty;

  /// Returns the string with the first character capitalized.
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }
}
