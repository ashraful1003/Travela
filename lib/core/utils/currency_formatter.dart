import 'package:intl/intl.dart';

/// Currency formatting utility.
class CurrencyFormatter {
  const CurrencyFormatter._();

  /// Format [value] using locale-aware currency formatting.
  static String format(
    double value, {
    String locale = 'en_US',
    String symbol = '৳',
    int decimalDigits = 2,
  }) {
    final NumberFormat f = NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: decimalDigits,
    );
    return f.format(value);
  }
}
