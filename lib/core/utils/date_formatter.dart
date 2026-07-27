import 'package:intl/intl.dart';

/// Small date formatting helper wrapper around `intl`.
class DateFormatter {
  const DateFormatter._();

  /// Formats [date] using the provided [pattern].
  static String format(DateTime date, String pattern) {
    return DateFormat(pattern).format(date);
  }

  /// Formats a date as a human readable short date.
  static String short(DateTime date) => DateFormat.yMMMd().format(date);
}
