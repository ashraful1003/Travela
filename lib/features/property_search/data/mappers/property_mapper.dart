import 'package:travela/features/property_search/data/mappers/location_mapper.dart';
import 'package:travela/features/property_search/data/mappers/price_range_mapper.dart';
import 'package:travela/features/property_search/data/models/property_dto.dart';
import 'package:travela/features/property_search/data/models/property_list_dto.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';

/// Maps [PropertyDto] (Data) to Domain [Property].
///
/// Purpose:
/// - Centralize conversion of property DTOs into Domain entities. Mapping is
///   purely structural: nested DTOs are converted via their own mappers.
///
/// Source type: [PropertyDto]
/// Target type: [Property]
extension PropertyDtoMapper on PropertyDto {
  /// Convert this DTO into a Domain [Property].
  Property toDomain() {
    return Property(
      id: id,
      title: title,
      location: location.toDomain(),
      priceRange: priceRange.toDomain(),
      maxGuests: maxGuests,
      description: description,
      bedrooms: bedrooms,
      bathrooms: bathrooms,
      photoUrls: List<String>.from(photoUrls),
      amenities: List<String>.from(amenities),
      instantBook: instantBook,
    );
  }
}

/// Helper for mapping a paginated DTO to a list of Domain entities.
extension PropertyListDtoMapper on PropertyListDto {
  /// Convert the `items` in this DTO into a list of Domain [Property].
  List<Property> toDomainList() {
    return items
        .map((PropertyDto e) => e.toDomain())
        .toList();
  }
}
