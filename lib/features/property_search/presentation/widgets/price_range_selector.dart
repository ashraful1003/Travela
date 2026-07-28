import 'package:flutter/material.dart';

/// Price range selector using a Material RangeSlider.
///
/// Exposes [onChanged] callback with the selected [RangeValues].
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
            const Text('Price range', style: TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            RangeSlider(
              values: initialRange,
              min: 0,
              max: 1000,
              divisions: 20,
              labels: RangeLabels(
                initialRange.start.round().toString(),
                initialRange.end.round().toString(),
              ),
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
