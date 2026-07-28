import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';

part 'property_search_event.freezed.dart';

/// Events for PropertySearchBloc.
@freezed
class PropertySearchEvent with _$PropertySearchEvent {
  /// Dispatched when the user submits the search form.
  ///
  /// [location] is the full location the user picked from autocomplete
  /// (id/lat/lng/within/tier_1/tier_2) - the search endpoint requires it.
  /// Other values are primitives; the Bloc builds domain objects (e.g.
  /// PriceRange) so validation exceptions flow through the centralized
  /// mapping.
  const factory PropertySearchEvent.searchSubmitted({
    required SelectedLocation location,
    required double minPrice, required double maxPrice, required int adults, required int children, required int infants, DateTime? checkIn,
    DateTime? checkOut,
    String? query,
  }) = _SearchSubmitted;

  /// Dispatched when the user requests a retry after an error.
  const factory PropertySearchEvent.retryRequested() = _RetryRequested;
}
