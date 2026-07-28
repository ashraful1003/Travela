import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/core/result/result_utils.dart';
import 'package:travela/features/property_search/domain/entities/guest_info.dart';
import 'package:travela/features/property_search/domain/entities/price_range.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/domain/entities/search_metadata.dart';
import 'package:travela/features/property_search/domain/entities/search_stream_event.dart';
import 'package:travela/features/property_search/domain/usecases/stream_search_properties.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_event.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_state.dart';

/// BLoC responsible for orchestrating the Property Search feature.
///
/// Responsibility:
/// - Receive user events (search submission, retry requests).
/// - Construct domain objects from primitive inputs and invoke
///   [StreamSearchProperties] to progressively drive UI state as the
///   backend streams search results.
///
/// Note: This BLoC constructs domain objects to ensure any domain validation
/// exceptions are raised inside the domain-aware layer and can be converted
/// to Failure via the central `mapExceptionToFailure` helper.
///
/// Stream lifecycle: the Bloc owns the active search subscription
/// (`_searchSubscription`). Starting a new search always cancels any
/// previous one first, and `close()` cancels it too. Bloc processes events
/// of the same type concurrently by default, so a monotonically increasing
/// `_searchGeneration` token guards the case where two `searchSubmitted`
/// events overlap: a handler that discovers, once it resumes from awaiting
/// the cancellation, that a newer search has since started simply abandons
/// its own attempt instead of subscribing — so only one subscription is
/// ever live at a time.
class PropertySearchBloc
    extends Bloc<PropertySearchEvent, PropertySearchState> {
  final StreamSearchProperties _streamSearchProperties;

  StreamSubscription<Either<Failure, SearchStreamEvent>>? _searchSubscription;
  int _searchGeneration = 0;
  SearchCriteria? _lastCriteria;

  PropertySearchBloc(this._streamSearchProperties)
    : super(const PropertySearchState()) {
    on<PropertySearchEvent>(_onEvent);
  }

  Future<void> _onEvent(
    PropertySearchEvent event,
    Emitter<PropertySearchState> emit,
  ) {
    return event.map(
      searchSubmitted: (e) async {
        final SearchCriteria criteria;
        try {
          criteria = SearchCriteria(
            location: e.location,
            checkIn: e.checkIn,
            checkOut: e.checkOut,
            priceRange: PriceRange(
              min: e.minPrice,
              max: e.maxPrice,
              // The search API takes a plain `min-max` price string with no
              // currency concept; this is only a domain-level invariant
              // holder, so the value here is never surfaced to the user.
              currency: 'BDT',
            ),
            guestInfo: GuestInfo(
              adults: e.adults,
              children: e.children,
              infants: e.infants,
            ),
            query: e.query,
          );
        } catch (err) {
          // Map known exceptions (including ArgumentError) to Failures
          // centrally.
          emit(
            state.copyWith(
              status: PropertySearchStatus.failure,
              failure: mapExceptionToFailure(err),
            ),
          );
          return;
        }
        _lastCriteria = criteria;
        await _startSearch(criteria, emit);
      },
      retryRequested: (e) async {
        final SearchCriteria? criteria = _lastCriteria;
        if (criteria == null) {
          return;
        }
        await _startSearch(criteria, emit);
      },
    );
  }

  /// Cancels any active search, subscribes to the new streaming search, and
  /// keeps this event handler alive (via [Completer]) for as long as the
  /// stream is active so that `emit()` calls from within the subscription's
  /// callbacks remain valid.
  Future<void> _startSearch(
    SearchCriteria criteria,
    Emitter<PropertySearchState> emit,
  ) async {
    final int generation = ++_searchGeneration;
    await _searchSubscription?.cancel();
    if (generation != _searchGeneration || emit.isDone) {
      // A newer search already took over while we awaited cancellation.
      return;
    }

    emit(
      state.copyWith(
        status: PropertySearchStatus.loading,
        properties: const <Property>[],
        metadata: null,
        failure: null,
      ),
    );

    final Completer<void> completer = Completer<void>();

    _searchSubscription = _streamSearchProperties
        .call(criteria)
        .listen(
          (Either<Failure, SearchStreamEvent> result) {
            if (generation != _searchGeneration || emit.isDone) {
              return;
            }
            _applyResult(result, emit);
          },
          onError: (Object err) {
            if (generation == _searchGeneration && !emit.isDone) {
              emit(
                state.copyWith(
                  status: PropertySearchStatus.failure,
                  failure: mapExceptionToFailure(err),
                ),
              );
            }
            if (!completer.isCompleted) {
              completer.complete();
            }
          },
          onDone: () {
            if (!completer.isCompleted) {
              completer.complete();
            }
          },
        );

    await completer.future;
  }

  /// Applies a single streamed result to the current state.
  void _applyResult(
    Either<Failure, SearchStreamEvent> result,
    Emitter<PropertySearchState> emit,
  ) {
    result.fold(
      (Failure failure) => emit(
        state.copyWith(status: PropertySearchStatus.failure, failure: failure),
      ),
      (SearchStreamEvent streamEvent) => streamEvent.when(
        metadata: (SearchMetadata metadata) =>
            emit(state.copyWith(metadata: metadata)),
        property: (Property property) => emit(
          state.copyWith(properties: <Property>[...state.properties, property]),
        ),
        completed: () => emit(
          state.copyWith(
            status: state.properties.isEmpty
                ? PropertySearchStatus.empty
                : PropertySearchStatus.success,
          ),
        ),
        failure: (Failure failure) => emit(
          state.copyWith(
            status: PropertySearchStatus.failure,
            failure: failure,
          ),
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _searchSubscription?.cancel();
    return super.close();
  }
}
