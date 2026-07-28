import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:travela/features/property_search/domain/entities/guest_info.dart';
import 'package:travela/features/property_search/domain/entities/price_range.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';

part 'search_criteria.freezed.dart';

/// Represents the set of user-specified criteria used to search for
/// properties.
///
/// Responsibility
/// - Aggregate search filters (location, dates, price, guests, free-text
///   query) in a single immutable value object that UseCases and
///   Repositories can depend on.
///
/// Why it exists
/// - A single SearchCriteria entity simplifies method signatures and keeps
///   search-related business concepts together.
@freezed
class SearchCriteria with _$SearchCriteria {
  const factory SearchCriteria({
    /// Location picked from autocomplete. Carries id/lat/lng plus the
    /// ranking metadata (within/tier_1/tier_2) the search endpoint expects.
    /// The search API requires either a location id or lat/lng, so this is
    /// mandatory in practice even though it's nullable at the type level.
    SelectedLocation? location,

    /// Optional check-in date.
    DateTime? checkIn,

    /// Optional check-out date.
    DateTime? checkOut,

    /// Optional price constraints.
    PriceRange? priceRange,

    /// Guest composition; defaults to one adult when omitted. This field is
    /// non-nullable to avoid repeated null checks across callers.
    @Default(GuestInfo()) GuestInfo guestInfo,

    /// Free-text query (e.g., "beachfront", "city center").
    String? query,

    /// Pagination: 1-based page number, matching the API.
    @Default(1) int page,

    /// Pagination: items per page (API default 20, max 50).
    @Default(20) int pageSize,
  }) = _SearchCriteria;
}
