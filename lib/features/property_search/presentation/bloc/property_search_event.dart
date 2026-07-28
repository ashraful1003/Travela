import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';

part 'property_search_event.freezed.dart';

/// Events for PropertySearchBloc.
@freezed
class PropertySearchEvent with _$PropertySearchEvent {
  /// Dispatched when the user submits the search form.
  const factory PropertySearchEvent.searchSubmitted(SearchCriteria criteria) =
      _SearchSubmitted;

  /// Dispatched when the user requests a retry after an error.
  const factory PropertySearchEvent.retryRequested() = _RetryRequested;
}
