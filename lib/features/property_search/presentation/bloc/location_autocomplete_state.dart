import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';

part 'location_autocomplete_state.freezed.dart';

enum LocationAutocompleteStatus { initial, loading, success, empty, failure }

@freezed
class LocationAutocompleteState with _$LocationAutocompleteState {
  const factory LocationAutocompleteState({
    @Default(LocationAutocompleteStatus.initial) LocationAutocompleteStatus status,
    @Default(<SelectedLocation>[]) List<SelectedLocation> suggestions,
    Failure? failure,
  }) = _LocationAutocompleteState;

  const LocationAutocompleteState._();
}
