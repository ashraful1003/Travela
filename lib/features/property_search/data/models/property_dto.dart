import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travela/features/property_search/data/models/location_dto.dart';
import 'package:travela/features/property_search/data/models/price_range_dto.dart';

part 'property_dto.freezed.dart';
part 'property_dto.g.dart';

/// DTO representing a Property payload from the remote API.
///
/// API payload example:
/// {
///   "id": "prop_123",
///   "title": "Cozy apartment",
///   "description": "...",
///   "location": { ... },
///   "price_range": { ... },
///   "max_guests": 4,
///   "bedrooms": 2,
///   "bathrooms": 1,
///   "photo_urls": ["https://..."],
///   "amenities": ["WiFi"],
///   "instant_book": true
/// }
///
/// Purpose:
/// - Transport-level representation for properties. This DTO is mapped to the
///   Domain `Property` entity by mappers located in data/mappers.
@JsonSerializable(fieldRename: FieldRename.snake)
@freezed
class PropertyDto with _$PropertyDto {
  const factory PropertyDto({
    required String id,
    required String title,
    required LocationDto location,
    required PriceRangeDto priceRange,
    required int maxGuests,

    String? description,
    int? bedrooms,
    int? bathrooms,

    @Default(<String>[]) List<String> photoUrls,
    @Default(<String>[]) List<String> amenities,
    @Default(false) bool instantBook,
  }) = _PropertyDto;

  factory PropertyDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyDtoFromJson(json);
}
