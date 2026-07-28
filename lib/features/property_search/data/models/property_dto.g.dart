// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyDto _$PropertyDtoFromJson(Map<String, dynamic> json) => PropertyDto(
  id: json['id'] as String,
  title: json['title'] as String,
  location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
  priceRange: PriceRangeDto.fromJson(
    json['price_range'] as Map<String, dynamic>,
  ),
  maxGuests: (json['max_guests'] as num).toInt(),
  description: json['description'] as String?,
  bedrooms: (json['bedrooms'] as num?)?.toInt(),
  bathrooms: (json['bathrooms'] as num?)?.toInt(),
  photoUrls: (json['photo_urls'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  amenities: (json['amenities'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  instantBook: json['instant_book'] as bool,
);

Map<String, dynamic> _$PropertyDtoToJson(PropertyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'price_range': instance.priceRange,
      'max_guests': instance.maxGuests,
      'description': instance.description,
      'bedrooms': instance.bedrooms,
      'bathrooms': instance.bathrooms,
      'photo_urls': instance.photoUrls,
      'amenities': instance.amenities,
      'instant_book': instance.instantBook,
    };

_$PropertyDtoImpl _$$PropertyDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyDtoImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
  priceRange: PriceRangeDto.fromJson(
    json['priceRange'] as Map<String, dynamic>,
  ),
  maxGuests: (json['maxGuests'] as num).toInt(),
  description: json['description'] as String?,
  bedrooms: (json['bedrooms'] as num?)?.toInt(),
  bathrooms: (json['bathrooms'] as num?)?.toInt(),
  photoUrls:
      (json['photoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  amenities:
      (json['amenities'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  instantBook: json['instantBook'] as bool? ?? false,
);

Map<String, dynamic> _$$PropertyDtoImplToJson(_$PropertyDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'priceRange': instance.priceRange,
      'maxGuests': instance.maxGuests,
      'description': instance.description,
      'bedrooms': instance.bedrooms,
      'bathrooms': instance.bathrooms,
      'photoUrls': instance.photoUrls,
      'amenities': instance.amenities,
      'instantBook': instance.instantBook,
    };
