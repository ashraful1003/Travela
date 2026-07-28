import 'package:flutter/material.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';
import 'package:travela/features/property_search/presentation/widgets/date_range_selector.dart';
import 'package:travela/features/property_search/presentation/widgets/guest_selector.dart';
import 'package:travela/features/property_search/presentation/widgets/location_autocomplete.dart';
import 'package:travela/features/property_search/presentation/widgets/price_range_selector.dart';
import 'package:travela/features/property_search/presentation/widgets/search_button.dart';

/// Form that collects search inputs and exposes an [onSearch] callback used by
/// the surrounding page to dispatch the search event to the BLoC.
class PropertySearchForm extends StatefulWidget {
  const PropertySearchForm({required this.onSearch, super.key});

  /// onSearch exposes only primitive values (plus the picked [SelectedLocation],
  /// which is itself a plain data holder). Presentation must not build domain
  /// entities that can throw during construction — the Bloc builds those from
  /// these primitives.
  final void Function(SelectedLocation location, DateTime? checkIn, DateTime? checkOut, double minPrice, double maxPrice, int adults, int children, int infants) onSearch;

  @override
  State<PropertySearchForm> createState() => _PropertySearchFormState();
}

class _PropertySearchFormState extends State<PropertySearchForm> {
  SelectedLocation? _selectedLocation;
  DateTime? _checkIn;
  DateTime? _checkOut;
  RangeValues _priceRange = const RangeValues(0, 50000);
  int _adults = 1;
  int _children = 0;
  int _infants = 0;

  void _handleSearch() {
    final SelectedLocation? location = _selectedLocation;
    if (location == null) {
      return;
    }
    // Emit primitives (plus the picked location) only. Bloc will construct
    // domain objects including PriceRange so any validation exceptions are
    // handled centrally.
    widget.onSearch(
      location,
      _checkIn,
      _checkOut,
      _priceRange.start,
      _priceRange.end,
      _adults,
      _children,
      _infants,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LocationAutocomplete(
          onSelected: (SelectedLocation sel) =>
              setState(() => _selectedLocation = sel),
        ),
        const SizedBox(height: 12),
        DateRangeSelector(
          checkIn: _checkIn,
          checkOut: _checkOut,
          onCheckIn: (DateTime? d) => setState(() {
            _checkIn = d;
            // Keep the range valid: drop a check-out that now falls before
            // the newly picked check-in.
            if (_checkOut != null && d != null && _checkOut!.isBefore(d)) {
              _checkOut = null;
            }
          }),
          onCheckOut: (DateTime? d) => setState(() => _checkOut = d),
        ),
        const SizedBox(height: 12),
        GuestSelector(onChanged: (Map<String, int> map) {
          setState(() {
            _adults = map['adults'] ?? _adults;
            _children = map['children'] ?? _children;
            _infants = map['infants'] ?? _infants;
          });
        }),
        const SizedBox(height: 12),
        PriceRangeSelector(
          initialRange: _priceRange,
          onChanged: (RangeValues range) => setState(() => _priceRange = range),
        ),
        const SizedBox(height: 16),
        SearchButton(
          onPressed: _selectedLocation == null ? null : _handleSearch,
        ),
        if (_selectedLocation == null) ...<Widget>[
          const SizedBox(height: 8),
          Text(
            'Pick a location from the suggestions to search.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ],
      ],
    );
  }
}
