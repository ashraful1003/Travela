// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularLocationDtoImpl _$$PopularLocationDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PopularLocationDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  nameBn: json['name_bn'] as String?,
  order: (json['order'] as num?)?.toInt(),
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  within: (json['within'] as num?)?.toDouble(),
  tier1: (json['tier_1'] as num?)?.toDouble(),
  tier2: (json['tier_2'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$PopularLocationDtoImplToJson(
  _$PopularLocationDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'name_bn': instance.nameBn,
  'order': instance.order,
  'lat': instance.lat,
  'lng': instance.lng,
  'within': instance.within,
  'tier_1': instance.tier1,
  'tier_2': instance.tier2,
};
