// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
  pageSize: (json['page_size'] as num?)?.toInt(),
);

Map<String, dynamic> _$$PropertyListDtoImplToJson(
  _$PropertyListDtoImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'page': instance.page,
  'page_size': instance.pageSize,
};
