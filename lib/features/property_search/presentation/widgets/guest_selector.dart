import 'package:flutter/material.dart';

/// Guest selector widget (adults/children/infants).
///
/// Manages its own adults/children/infants counts (starting at the same
/// defaults [PropertySearchForm] assumes: 1 adult, 0 children, 0 infants)
/// and reports every change via [onChanged].
class GuestSelector extends StatefulWidget {
  const GuestSelector({super.key, this.onChanged});

  final ValueChanged<Map<String, int>>? onChanged;

  @override
  State<GuestSelector> createState() => _GuestSelectorState();
}

class _GuestSelectorState extends State<GuestSelector> {
  static const int _minAdults = 1;
  static const int _minChildren = 0;
  static const int _minInfants = 0;
  static const int _maxGuestsPerCategory = 20;

  int _adults = _minAdults;
  int _children = _minChildren;
  int _infants = _minInfants;

  void _report() {
    widget.onChanged?.call(<String, int>{
      'adults': _adults,
      'children': _children,
      'infants': _infants,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Guests', style: TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _GuestCounter(
                  label: 'Adults',
                  count: _adults,
                  canDecrement: _adults > _minAdults,
                  canIncrement: _adults < _maxGuestsPerCategory,
                  onDecrement: () => setState(() {
                    _adults--;
                    _report();
                  }),
                  onIncrement: () => setState(() {
                    _adults++;
                    _report();
                  }),
                ),
                _GuestCounter(
                  label: 'Children',
                  count: _children,
                  canDecrement: _children > _minChildren,
                  canIncrement: _children < _maxGuestsPerCategory,
                  onDecrement: () => setState(() {
                    _children--;
                    _report();
                  }),
                  onIncrement: () => setState(() {
                    _children++;
                    _report();
                  }),
                ),
                _GuestCounter(
                  label: 'Infants',
                  count: _infants,
                  canDecrement: _infants > _minInfants,
                  canIncrement: _infants < _maxGuestsPerCategory,
                  onDecrement: () => setState(() {
                    _infants--;
                    _report();
                  }),
                  onIncrement: () => setState(() {
                    _infants++;
                    _report();
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _GuestCounter extends StatelessWidget {
  const _GuestCounter({
    required this.label,
    required this.count,
    required this.canDecrement,
    required this.canIncrement,
    required this.onDecrement,
    required this.onIncrement,
  });

  final String label;
  final int count;
  final bool canDecrement;
  final bool canIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(label),
        const SizedBox(height: 6),
        Row(
          children: <Widget>[
            IconButton(
              onPressed: canDecrement ? onDecrement : null,
              icon: const Icon(Icons.remove),
              tooltip: 'Decrease $label',
            ),
            Text('$count'),
            IconButton(
              onPressed: canIncrement ? onIncrement : null,
              icon: const Icon(Icons.add),
              tooltip: 'Increase $label',
            ),
          ],
        ),
      ],
    );
  }
}
