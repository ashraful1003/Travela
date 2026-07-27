import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:travela/features/property_search/domain/entities/guest_info.dart';
import 'package:travela/features/property_search/domain/entities/location.dart';
import 'package:travela/features/property_search/domain/entities/price_range.dart';

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
    /// Preferred location for the search. Nullable for open searches.
    Location? location,

    /// Optional check-in date.
    DateTime? checkIn,

    /// Optional check-out date.
    DateTime? checkOut,

    /// Optional price constraints.
    PriceRange? priceRange,

    /// Guest composition; defaults to one adult when omitted.
    GuestInfo? guestInfo,

    /// Free-text query (e.g., "beachfront", "city center").
    String? query,

    /// Pagination: page index (0-based).
    @Default(0) int page,

    /// Pagination: items per page.
    @Default(20) int pageSize,
  }) = _SearchCriteria;
}
