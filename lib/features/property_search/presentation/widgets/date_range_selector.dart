import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Date range selector for check-in/check-out. This is a controlled widget:
/// the currently picked [checkIn]/[checkOut] are passed in by the parent and
/// rendered on the buttons, rather than the buttons always showing static
/// "Check-in"/"Check-out" labels regardless of what was picked.
class DateRangeSelector extends StatelessWidget {
  const DateRangeSelector({
    super.key,
    this.checkIn,
    this.checkOut,
    this.onCheckIn,
    this.onCheckOut,
  });

  final DateTime? checkIn;
  final DateTime? checkOut;
  final ValueChanged<DateTime?>? onCheckIn;
  final ValueChanged<DateTime?>? onCheckOut;

  static final DateFormat _format = DateFormat('MMM d, yyyy');

  Future<void> _pickDate(
    BuildContext context, {
    required DateTime? initial,
    required DateTime firstDate,
    required ValueChanged<DateTime?>? onPick,
  }) async {
    final DateTime lastDate = DateTime(DateTime.now().year + 2);
    final DateTime effectiveInitial = initial != null && !initial.isBefore(firstDate)
        ? initial
        : firstDate;
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: effectiveInitial,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (onPick != null) onPick(picked);
  }

  @override
  Widget build(BuildContext context) {
    final DateTime today = DateUtils.dateOnly(DateTime.now());
    final DateTime checkOutFirstDate = checkIn ?? today;

    return Row(
      children: <Widget>[
        Expanded(
          child: OutlinedButton.icon(
            icon: const Icon(Icons.calendar_today),
            label: Text(checkIn != null ? _format.format(checkIn!) : 'Check-in'),
            onPressed: () => _pickDate(
              context,
              initial: checkIn,
              firstDate: today,
              onPick: onCheckIn,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: OutlinedButton.icon(
            icon: const Icon(Icons.calendar_today),
            label: Text(checkOut != null ? _format.format(checkOut!) : 'Check-out'),
            onPressed: () => _pickDate(
              context,
              initial: checkOut,
              firstDate: checkOutFirstDate,
              onPick: onCheckOut,
            ),
          ),
        ),
      ],
    );
  }
}
