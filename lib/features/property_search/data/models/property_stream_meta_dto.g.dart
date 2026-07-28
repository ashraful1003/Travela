// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_stream_meta_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyStreamPaginationDtoImpl _$$PropertyStreamPaginationDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyStreamPaginationDtoImpl(
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  totalCount: (json['total_count'] as num?)?.toInt(),
  next: (json['next'] as num?)?.toInt(),
  totalPage: (json['total_page'] as num?)?.toInt(),
);

Map<String, dynamic> _$$PropertyStreamPaginationDtoImplToJson(
  _$PropertyStreamPaginationDtoImpl instance,
) => <String, dynamic>{
  'page': instance.page,
  'limit': instance.limit,
  'total_count': instance.totalCount,
  'next': instance.next,
  'total_page': instance.totalPage,
};

_$PropertyStreamMetaDtoImpl _$$PropertyStreamMetaDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyStreamMetaDtoImpl(
  totalCount: (json['total_count'] as num).toInt(),
  pagination: json['pagination'] == null
      ? null
      : PropertyStreamPaginationDto.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$PropertyStreamMetaDtoImplToJson(
  _$PropertyStreamMetaDtoImpl instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'pagination': instance.pagination,
};
