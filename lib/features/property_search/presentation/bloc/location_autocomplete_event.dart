import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';

part 'location_autocomplete_event.freezed.dart';

@freezed
class LocationAutocompleteEvent with _$LocationAutocompleteEvent {
  const factory LocationAutocompleteEvent.queryChanged(String query) = _QueryChanged;
  const factory LocationAutocompleteEvent.locationSelected(SelectedLocation location) = _LocationSelected;
}
