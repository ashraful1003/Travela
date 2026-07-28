import 'package:bloc/bloc.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/core/utils/debouncer.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';
import 'package:travela/features/property_search/domain/usecases/search_locations.dart';
import 'package:travela/features/property_search/presentation/bloc/location_autocomplete_event.dart';
import 'package:travela/features/property_search/presentation/bloc/location_autocomplete_state.dart';

/// BLoC for the location autocomplete field.
///
/// Debounce strategy: [queryChanged] fires on every keystroke but never
/// calls the API directly - it only (re)starts a single [Debouncer] timer.
/// Only when that timer elapses without being reset by a newer keystroke
/// does it dispatch [LocationAutocompleteEvent.searchRequested] back into
/// this same Bloc, which is what actually performs the search.
///
/// This two-event split matters: flutter_bloc's default transformer
/// processes events of the same type sequentially, awaiting each handler
/// before starting the next. If the API call were awaited directly inside
/// the `queryChanged` handler, every keystroke would still trigger a request
/// - just serialized one after another - instead of collapsing a typing
/// burst into a single request the way debouncing is supposed to.
class LocationAutocompleteBloc
    extends Bloc<LocationAutocompleteEvent, LocationAutocompleteState> {
  final SearchLocations _searchLocations;
  final Debouncer _debouncer = Debouncer(
    delay: const Duration(milliseconds: 800),
  );

  LocationAutocompleteBloc(this._searchLocations)
    : super(const LocationAutocompleteState()) {
    on<LocationAutocompleteEvent>(_onEvent);
  }

  Future<void> _onEvent(
    LocationAutocompleteEvent event,
    Emitter<LocationAutocompleteState> emit,
  ) {
    return event.map(
      queryChanged: (e) async {
        final String q = e.query.trim();
        if (q.isEmpty) {
          _debouncer.cancel();
          emit(
            state.copyWith(
              status: LocationAutocompleteStatus.initial,
              suggestions: <SelectedLocation>[],
              failure: null,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            status: LocationAutocompleteStatus.loading,
            failure: null,
          ),
        );

        _debouncer.run(
          () => add(LocationAutocompleteEvent.searchRequested(q)),
        );
      },
      searchRequested: (e) async {
        final Either<Failure, List<SelectedLocation>> result =
            await _searchLocations.call(e.query);

        result.fold(
          (Failure l) {
            emit(
              state.copyWith(
                status: LocationAutocompleteStatus.failure,
                failure: l,
                suggestions: <SelectedLocation>[],
              ),
            );
          },
          (List<SelectedLocation> r) {
            emit(
              state.copyWith(
                status: r.isEmpty
                    ? LocationAutocompleteStatus.empty
                    : LocationAutocompleteStatus.success,
                suggestions: r,
              ),
            );
          },
        );
      },
      locationSelected: (e) async {
        _debouncer.cancel();
        // When a location is selected we expose it to Presentation via state
        // (no navigation here). Keep suggestions list intact if needed.
        emit(
          state.copyWith(
            status: LocationAutocompleteStatus.initial,
            suggestions: <SelectedLocation>[],
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _debouncer.cancel();
    return super.close();
  }
}
