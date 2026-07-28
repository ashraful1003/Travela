import 'package:flutter/material.dart';
import 'package:travela/core/utils/currency_formatter.dart';

/// Price range selector using a Material RangeSlider.
///
/// Exposes [onChanged] callback with the selected [RangeValues]. The current
/// min/max are always shown as text - `RangeSlider`'s built-in [RangeLabels]
/// only render as tooltips while a thumb is actively being dragged, which
/// hides the selected range the rest of the time.
class PriceRangeSelector extends StatelessWidget {
  const PriceRangeSelector({
    required this.initialRange, super.key,
    this.onChanged,
  });

  final RangeValues initialRange;
  final ValueChanged<RangeValues>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Price range',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  '${CurrencyFormatter.format(initialRange.start, decimalDigits: 0)} - '
                  '${CurrencyFormatter.format(initialRange.end, decimalDigits: 0)}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
            Semantics(
              label: 'Price range slider',
              child: RangeSlider(
                values: initialRange,
                min: 0,
                max: 50000,
                divisions: 50,
                labels: RangeLabels(
                  initialRange.start.round().toString(),
                  initialRange.end.round().toString(),
                ),
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
