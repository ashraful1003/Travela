import 'package:flutter/material.dart';
import 'package:travela/features/property_search/presentation/widgets/date_range_selector.dart';
import 'package:travela/features/property_search/presentation/widgets/guest_selector.dart';
import 'package:travela/features/property_search/presentation/widgets/loading_view.dart';
import 'package:travela/features/property_search/presentation/widgets/location_field.dart';
import 'package:travela/features/property_search/presentation/widgets/price_range_selector.dart';
import 'package:travela/features/property_search/presentation/widgets/search_button.dart';

/// Form that collects search inputs and displays results.
///
/// This widget is presentation-only and exposes callbacks for integration
/// with the BLoC in later sprints.
class PropertySearchForm extends StatelessWidget {
  const PropertySearchForm({super.key});

  // Placeholder callbacks — replace with Bloc callbacks later
  void _onSearch({
    required String location,
    required int adults,
    required int children,
    required int infants,
    required RangeValues priceRange,
    DateTime? checkIn,
    DateTime? checkOut,
  }) {
    // Placeholder: integrate with Bloc on next sprint.
  }

  @override
  Widget build(BuildContext context) {
    // Local controllers/state would normally be provided by a stateful
    // widget or Bloc; keep stateless and use local variables for illustration.
    final RangeValues defaultRange = const RangeValues(50, 300);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const LocationField(),
            const SizedBox(height: 12),
            const DateRangeSelector(),
            const SizedBox(height: 12),
            const GuestSelector(),
            const SizedBox(height: 12),
            PriceRangeSelector(
              initialRange: defaultRange,
              onChanged: (RangeValues range) {},
            ),
            const SizedBox(height: 16),
            SearchButton(
              onPressed: () => _onSearch(
                location: '',
                checkIn: null,
                checkOut: null,
                adults: 1,
                children: 0,
                infants: 0,
                priceRange: defaultRange,
              ),
            ),
            const SizedBox(height: 20),

            // Results placeholder area — in a real app this would react to Bloc
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Show loading / empty / error / list UI as required. These
                  // are static placeholders for now.
                  LoadingView(),
                  // EmptyView(),
                  // ErrorView(message: 'Failed to load results'),
                  // PropertyList(properties: []),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
