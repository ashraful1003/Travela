import 'package:freezed_annotation/freezed_annotation.dart';

part 'property.freezed.dart';

/// Business entity representing a single search result streamed from the
/// `/api/search/stream` `item` event.
@freezed
class Property with _$Property {
  const factory Property({
    /// Unique business identifier for the property.
    required String id,

    /// Short human-readable title.
    required String title,

    /// Free-text address/location label as returned by the API.
    required String address,

    /// Listed price.
    required num price,

    /// Discounted price, when the property has an active offer.
    num? offerPrice,

    /// Average review score (0-5), null when the property has no reviews yet.
    double? reviewsAvg,

    /// Number of reviews backing [reviewsAvg].
    @Default(0) int reviewsCount,

    /// Image URLs, in the order returned by the API. May be empty.
    @Default(<String>[]) List<String> imageUrls,

    /// Whether this result is a hotel rather than a standalone property.
    @Default(false) bool isHotel,

    /// Human-readable label for a promotional badge (e.g. "Sponsored"),
    /// when the API attaches one.
    String? featuredBadgeLabel,

    int? bedroom,
    int? beds,
    int? bathroom,
    int? maxGuest,
  }) = _Property;
}
