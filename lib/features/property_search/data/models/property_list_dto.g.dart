// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyListDto _$PropertyListDtoFromJson(Map<String, dynamic> json) =>
    PropertyListDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => PropertyDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['page_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PropertyListDtoToJson(PropertyListDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'page_size': instance.pageSize,
    };

_$PropertyListDtoImpl _$$PropertyListDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyListDtoImpl(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PropertyDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PropertyDto>[],
  total: (json['total'] as num?)?.toInt(),
  page: (json['page'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
);

Map<String, dynamic> _$$PropertyListDtoImplToJson(
  _$PropertyListDtoImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
