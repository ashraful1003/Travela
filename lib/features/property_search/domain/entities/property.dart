import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:travela/features/property_search/domain/entities/location.dart';
import 'package:travela/features/property_search/domain/entities/price_range.dart';

part 'property.freezed.dart';

/// Business entity representing a rentable property offered through the
/// platform.
///
/// Responsibility
/// - Encapsulate immutable business data describing a property. This entity
///   models domain concepts (title, location, price, capacity) and purposely
///   excludes transport or persistence concerns.
///
/// Why it exists
/// - Application features (listing, detail, search results) operate on the
///   Property entity.
/// - Keeping the entity domain-focused allows UseCases and Repositories to
///   evolve independently of APIs and UI.
@freezed
class Property with _$Property {
  const factory Property({
    /// Unique business identifier for the property.
    required String id,

    /// Short human-readable title.
    required String title,

    /// Location where the property is situated.
    required Location location,

    /// Representative pricing for the property.
    required PriceRange priceRange,

    /// Maximum number of guests supported.
    required int maxGuests,

    /// Longer description. Nullable if not provided.
    String? description,

    /// Number of bedrooms (optional as some listings may be studio-like).
    int? bedrooms,

    /// Number of bathrooms.
    int? bathrooms,

    /// List of photo URLs. This is a business-level concept; transport
    /// representation (DTO) will own URL formatting and validation.
    @Default(<String>[]) List<String> photoUrls,

    /// List of amenity identifiers or human strings describing available
    /// amenities (e.g., "WiFi", "Air conditioning"). Kept generic.
    @Default(<String>[]) List<String> amenities,

    /// Whether the property supports instant booking.
    @Default(false) bool instantBook,
  }) = _Property;
}
