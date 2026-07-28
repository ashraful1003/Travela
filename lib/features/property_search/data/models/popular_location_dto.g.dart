// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularLocationDtoImpl _$$PopularLocationDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PopularLocationDtoImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  within: json['within'] as String?,
  tier1: json['tier_1'] as String?,
  tier2: json['tier_2'] as String?,
);

Map<String, dynamic> _$$PopularLocationDtoImplToJson(
  _$PopularLocationDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'lat': instance.lat,
  'lng': instance.lng,
  'within': instance.within,
  'tier_1': instance.tier1,
  'tier_2': instance.tier2,
};
