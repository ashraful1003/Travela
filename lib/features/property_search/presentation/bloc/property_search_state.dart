import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';

part 'property_search_state.freezed.dart';

/// UI status for the property search screen.
enum PropertySearchStatus { initial, loading, success, empty, failure }

/// Single immutable state for PropertySearchBloc.
@freezed
class PropertySearchState with _$PropertySearchState {
  const factory PropertySearchState({
    @Default(PropertySearchStatus.initial) PropertySearchStatus status,
    @Default(<Property>[]) List<Property> properties,
    Failure? failure,
  }) = _PropertySearchState;

  const PropertySearchState._();
}
