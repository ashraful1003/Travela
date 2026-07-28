import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/core/utils/debouncer.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';
import 'package:travela/features/property_search/domain/usecases/search_locations.dart';
import 'package:travela/features/property_search/presentation/bloc/location_autocomplete_event.dart';
import 'package:travela/features/property_search/presentation/bloc/location_autocomplete_state.dart';

class LocationAutocompleteBloc
    extends Bloc<LocationAutocompleteEvent, LocationAutocompleteState> {
  final SearchLocations _searchLocations;
  final Debouncer _debouncer = Debouncer(
    delay: const Duration(milliseconds: 300),
  );

  LocationAutocompleteBloc(this._searchLocations)
    : super(const LocationAutocompleteState()) {
    on<LocationAutocompleteEvent>((
      LocationAutocompleteEvent event,
      Emitter<LocationAutocompleteState> emit,
    ) async {
      await event.map(
        queryChanged: (e) async {
          final String q = e.query.trim();
          if (q.isEmpty) {
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

          final Completer<void> c = Completer<void>();

          _debouncer.run(() async {
            final Either<Failure, List<SelectedLocation>> result =
                await _searchLocations.call(q);

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
                final List<SelectedLocation> items = r;
                if (items.isEmpty) {
                  emit(
                    state.copyWith(
                      status: LocationAutocompleteStatus.empty,
                      suggestions: <SelectedLocation>[],
                    ),
                  );
                } else {
                  emit(
                    state.copyWith(
                      status: LocationAutocompleteStatus.success,
                      suggestions: items,
                    ),
                  );
                }
              },
            );

            c.complete();
          });

          await c.future;
        },
        locationSelected: (e) async {
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
    });
  }

  @override
  Future<void> close() {
    _debouncer.cancel();
    return super.close();
  }
}
