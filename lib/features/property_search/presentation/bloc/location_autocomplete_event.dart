import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';

part 'location_autocomplete_event.freezed.dart';

@freezed
class LocationAutocompleteEvent with _$LocationAutocompleteEvent {
  /// Raised on every keystroke. Only updates the loading state and (re)starts
  /// the debounce timer - never triggers the API call directly.
  const factory LocationAutocompleteEvent.queryChanged(String query) = _QueryChanged;

  /// Raised internally by the Bloc once the debounce timer fires with no
  /// further keystrokes in between. This is the only event that actually
  /// performs the search.
  const factory LocationAutocompleteEvent.searchRequested(String query) = _SearchRequested;

  const factory LocationAutocompleteEvent.locationSelected(SelectedLocation location) = _LocationSelected;
}
