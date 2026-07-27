/// Generic DateTime extensions for formatting and convenience.
library;
import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  /// Formats the date as yyyy-MM-dd.
  String toIsoDateString() => DateFormat('yyyy-MM-dd').format(this);

  /// Formats using the provided pattern.
  String format(String pattern) => DateFormat(pattern).format(this);
}
