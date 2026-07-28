import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:travela/core/errors/failures.dart';
import 'package:travela/core/result/either.dart';
import 'package:travela/core/result/result_utils.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/domain/entities/search_criteria.dart';
import 'package:travela/features/property_search/domain/entities/location.dart';
import 'package:travela/features/property_search/domain/entities/price_range.dart';
import 'package:travela/features/property_search/domain/entities/guest_info.dart';
import 'package:travela/features/property_search/domain/usecases/search_properties.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_event.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_state.dart';

/// BLoC responsible for orchestrating the Property Search feature.
///
/// Responsibility:
/// - Receive user events (search submission, retry requests).
/// - Construct domain objects from primitive inputs and invoke [SearchProperties]
///   use case and emit UI states based on the resulting Either<Failure, List<Property>>.
///
/// Note: This BLoC constructs domain objects to ensure any domain validation
/// exceptions are raised inside the domain-aware layer and can be converted to
/// Failure via the central `mapExceptionToFailure` helper.
class PropertySearchBloc extends Bloc<PropertySearchEvent, PropertySearchState> {
  final SearchProperties _searchProperties;

  PropertySearchBloc(this._searchProperties)
      : super(const PropertySearchState()) {
    on<PropertySearchEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(PropertySearchEvent event, Emitter<PropertySearchState> emit) async {
    await event.map(
      searchSubmitted: (e) async {
        // Build domain objects here (not in the UI) so domain validation
        // exceptions are handled centrally.
        emit(state.copyWith(status: PropertySearchStatus.loading, failure: null));

        try {
          final Location? location = e.location.isNotEmpty ? Location(name: e.location) : null;

          final PriceRange priceRange = PriceRange(min: e.minPrice, max: e.maxPrice, currency: e.currency);

          final GuestInfo guestInfo = GuestInfo(adults: e.adults, children: e.children, infants: e.infants);

          final SearchCriteria criteria = SearchCriteria(
            location: location,
            checkIn: e.checkIn,
            checkOut: e.checkOut,
            priceRange: priceRange,
            guestInfo: guestInfo,
            query: e.query,
          );

          final Either<Failure, List<Property>> result = await _searchProperties.call(criteria);

          if (result.isLeft) {
            final Failure failure = (result as Left).value;
            emit(state.copyWith(status: PropertySearchStatus.failure, failure: failure));
            return;
          }

          final List<Property> props = (result as Right).value;

          if (props.isEmpty) {
            emit(state.copyWith(status: PropertySearchStatus.empty, properties: <Property>[]));
          } else {
            emit(state.copyWith(status: PropertySearchStatus.success, properties: props));
          }
        } catch (err) {
          // Map known exceptions (including ArgumentError) to Failures centrally
          final Failure failure = mapExceptionToFailure(err);
          emit(state.copyWith(status: PropertySearchStatus.failure, failure: failure));
        }
      },
      retryRequested: (e) async {
        // No-op: presentation should re-dispatch searchSubmitted with desired criteria
        return;
      },
    );
  }
}
