import 'package:intl/intl.dart';

/// Currency formatting utility.
class CurrencyFormatter {
  const CurrencyFormatter._();

  /// Format [value] using locale-aware currency formatting.
  static String format(double value, {String locale = 'en_US', String symbol = '\$'}) {
    final NumberFormat f = NumberFormat.currency(locale: locale, symbol: symbol);
    return f.format(value);
  }
}
