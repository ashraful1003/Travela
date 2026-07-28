import 'package:flutter/material.dart';
import 'package:travela/features/property_search/domain/entities/guest_info.dart';
import 'package:travela/features/property_search/domain/entities/location.dart';
import 'package:travela/features/property_search/domain/entities/price_range.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/presentation/widgets/date_range_selector.dart';
import 'package:travela/features/property_search/presentation/widgets/guest_selector.dart';
import 'package:travela/features/property_search/presentation/widgets/location_field.dart';
import 'package:travela/features/property_search/presentation/widgets/price_range_selector.dart';
import 'package:travela/features/property_search/presentation/widgets/search_button.dart';

/// Form that collects search inputs and exposes an [onSearch] callback used by
/// the surrounding page to dispatch the search event to the BLoC.
class PropertySearchForm extends StatefulWidget {
  const PropertySearchForm({super.key, required this.onSearch});

  final ValueChanged<SearchCriteria> onSearch;

  @override
  State<PropertySearchForm> createState() => _PropertySearchFormState();
}

class _PropertySearchFormState extends State<PropertySearchForm> {
  String _locationText = '';
  DateTime? _checkIn;
  DateTime? _checkOut;
  RangeValues _priceRange = const RangeValues(50, 300);
  int _adults = 1;
  int _children = 0;
  int _infants = 0;

  void _handleSearch() {
    // Build simple domain objects from collected inputs. Keep UI free of
    // business validation; domain constructors may throw and BLoC will handle
    // failures via centralized mapping.
    final Location? location = _locationText.isNotEmpty ? Location(name: _locationText) : null;

    final PriceRange priceRange = PriceRange(min: _priceRange.start, max: _priceRange.end, currency: 'USD');

    final SearchCriteria criteria = SearchCriteria(
      location: location,
      checkIn: _checkIn,
      checkOut: _checkOut,
      priceRange: priceRange,
      guestInfo: GuestInfo(adults: _adults, children: _children, infants: _infants),
    );

    widget.onSearch(criteria);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LocationField(onChanged: (v) => setState(() => _locationText = v)),
            const SizedBox(height: 12),
            DateRangeSelector(
              onCheckIn: (d) => setState(() => _checkIn = d),
              onCheckOut: (d) => setState(() => _checkOut = d),
            ),
            const SizedBox(height: 12),
            GuestSelector(onChanged: (map) {
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
            SearchButton(onPressed: _handleSearch),
            const SizedBox(height: 20),

            // Results area is handled by the page that composes this form.
            const Expanded(child: SizedBox()),
          ],
        );
      },
    );
  }
}
