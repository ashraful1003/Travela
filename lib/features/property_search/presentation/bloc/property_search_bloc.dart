import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/domain/usecases/search_properties.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_event.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_state.dart';

/// BLoC responsible for orchestrating the Property Search feature.
///
/// Responsibility:
/// - Receive user events (search submission, retry requests).
/// - Invoke [SearchProperties] use case and emit UI states based on the
///   resulting Either<Failure, List<Property>>.
///
/// Note: This BLoC does not perform business validation or access repositories
/// directly. All business logic lives in Domain / Data layers.
class PropertySearchBloc extends Bloc<PropertySearchEvent, PropertySearchState> {
  final SearchProperties _searchProperties;

  PropertySearchBloc(this._searchProperties)
      : super(const PropertySearchState()) {
    on<PropertySearchEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(PropertySearchEvent event, Emitter<PropertySearchState> emit) async {
    await event.map(
      searchSubmitted: (e) async {
        final SearchCriteria criteria = e.criteria;

        emit(state.copyWith(status: PropertySearchStatus.loading, failure: null));

        final Either<Failure, List<Property>> result = await _searchProperties.call(criteria);

        if (result.isLeft) {
          final Failure failure = (result as Left).value;
          emit(state.copyWith(status: PropertySearchStatus.failure, failure: failure));
          return;
        }

        final List<Property> props = (result as Right).value;

        if (props.isEmpty) {
          emit(state.copyWith(status: PropertySearchStatus.empty, properties: []));
        } else {
          emit(state.copyWith(status: PropertySearchStatus.success, properties: props));
        }
      },
      retryRequested: (e) async {
        // No-op: presentation should re-dispatch searchSubmitted with desired criteria
        return;
      },
    );
  }
}
