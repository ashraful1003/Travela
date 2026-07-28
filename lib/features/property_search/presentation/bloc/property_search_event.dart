import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_search_event.freezed.dart';

/// Events for PropertySearchBloc.
@freezed
class PropertySearchEvent with _$PropertySearchEvent {
  /// Dispatched when the user submits the search form.
  ///
  /// Carries only primitive values — Presentation must not construct domain
  /// entities that enforce business invariants. The Bloc will build domain
  /// objects (e.g., PriceRange) so validation exceptions flow through the
  /// centralized mapping.
  const factory PropertySearchEvent.searchSubmitted({
    required String location,
    required double minPrice, required double maxPrice, required String currency, required int adults, required int children, required int infants, DateTime? checkIn,
    DateTime? checkOut,
    String? query,
  }) = _SearchSubmitted;

  /// Dispatched when the user requests a retry after an error.
  const factory PropertySearchEvent.retryRequested() = _RetryRequested;
}
