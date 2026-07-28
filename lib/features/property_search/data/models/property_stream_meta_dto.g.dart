// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_stream_meta_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyStreamMetaDtoImpl _$$PropertyStreamMetaDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyStreamMetaDtoImpl(
  searchId: json['search_id'] as String,
  estimatedTotal: (json['estimated_total'] as num?)?.toInt(),
  timestamp: json['timestamp'] as String?,
);

Map<String, dynamic> _$$PropertyStreamMetaDtoImplToJson(
  _$PropertyStreamMetaDtoImpl instance,
) => <String, dynamic>{
  'search_id': instance.searchId,
  'estimated_total': instance.estimatedTotal,
  'timestamp': instance.timestamp,
};
