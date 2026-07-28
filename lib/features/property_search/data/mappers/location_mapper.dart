import 'package:travela/features/property_search/data/models/location_dto.dart';
import 'package:travela/features/property_search/domain/entities/location.dart';

/// Maps [LocationDto] (Data layer) to [Location] (Domain layer).
///
/// Purpose:
/// - Centralize the conversion from transport representation to business
///   representation. This is a pure, deterministic mapping with no side
///   effects.
///
/// Source type: [LocationDto]
/// Target type: [Location]
extension LocationDtoMapper on LocationDto {
  /// Convert this DTO into a Domain [Location].
  Location toDomain() {
    return Location(
      name: name,
      address: address,
      city: city,
      country: country,
      latitude: latitude,
      longitude: longitude,
    );
  }
}
