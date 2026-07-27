/// Simple, reusable validators for common form fields.
class Validators {
  Validators._();

  /// Returns true when [email] looks like an email address.
  static bool isValidEmail(String? email) {
    if (email == null) return false;
    final RegExp e = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}");
    return e.hasMatch(email);
  }

  /// Returns true when [value] is not null or empty after trimming.
  static bool isNotEmpty(String? value) => value != null && value.trim().isNotEmpty;
}
