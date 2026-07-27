import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

/// Represents a geographic or named location used by the Property Search
/// feature.
///
/// Responsibility
/// - Hold plain business data about a location (name, address, city, country,
///   coordinates) without any transport or UI concerns.
///
/// Why it exists
/// - Locations are central to searching and presenting properties. Keeping a
///   dedicated Location entity avoids leaking API or presentation details.
@freezed
class Location with _$Location {
  const factory Location({
    /// Human friendly name for the location (e.g., "Downtown", "Midtown").
    required String name,

    /// Optional street address.
    String? address,

    /// City or locality.
    String? city,

    /// Country name or ISO code.
    String? country,

    /// Latitude in decimal degrees. Nullable since some locations may be
    /// specified only by name.
    double? latitude,

    /// Longitude in decimal degrees.
    double? longitude,
  }) = _Location;
}
