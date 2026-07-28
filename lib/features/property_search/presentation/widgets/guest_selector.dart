import 'package:flutter/material.dart';

/// Guest selector widget (adults/children/infants).
///
/// Stateless presentation component exposing callbacks for value changes.
class GuestSelector extends StatelessWidget {
  const GuestSelector({super.key, this.onChanged});

  final ValueChanged<Map<String, int>>? onChanged;

  @override
  Widget build(BuildContext context) {
    // Use simple Buttons to illustrate; state management belongs to parent.
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Guests', style: TextStyle(fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _GuestCountLabel(label: 'Adults', count: 1),
                _GuestCountLabel(label: 'Children', count: 0),
                _GuestCountLabel(label: 'Infants', count: 0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _GuestCountLabel extends StatelessWidget {
  const _GuestCountLabel({required this.label, required this.count});
  final String label;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(label),
        const SizedBox(height: 6),
        Row(
          children: <Widget>[
            IconButton(onPressed: null, icon: const Icon(Icons.remove), tooltip: 'Decrease $label',),
            Text('$count'),
            IconButton(onPressed: null, icon: const Icon(Icons.add), tooltip: 'Increase $label',),
          ],
        ),
      ],
    );
  }
}
