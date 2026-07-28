import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/domain/entities/search_metadata.dart';

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

    /// Metadata emitted by the streaming search (e.g. search id, estimated
    /// total). Null until the first metadata event of a search arrives.
    SearchMetadata? metadata,
  }) = _PropertySearchState;

  const PropertySearchState._();
}
