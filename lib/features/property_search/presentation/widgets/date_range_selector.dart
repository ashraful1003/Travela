import 'package:flutter/material.dart';

/// Simple date range selector that exposes callbacks for check-in and
/// check-out selection. This widget is presentation-only and does not manage
/// a backing state — it relies on parent to handle values in a real app.
class DateRangeSelector extends StatelessWidget {
  const DateRangeSelector({super.key, this.onCheckIn, this.onCheckOut});

  final ValueChanged<DateTime?>? onCheckIn;
  final ValueChanged<DateTime?>? onCheckOut;

  Future<void> _pickDate(BuildContext context, ValueChanged<DateTime?>? onPick) async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 2),
    );
    if (onPick != null) onPick(picked);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: OutlinedButton.icon(
            icon: const Icon(Icons.calendar_today),
            label: const Text('Check-in'),
            onPressed: () => _pickDate(context, onCheckIn),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: OutlinedButton.icon(
            icon: const Icon(Icons.calendar_today),
            label: const Text('Check-out'),
            onPressed: () => _pickDate(context, onCheckOut),
          ),
        ),
      ],
    );
  }
}
