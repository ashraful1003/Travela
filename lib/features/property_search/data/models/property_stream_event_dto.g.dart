// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_stream_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyStreamEventMetaDtoImpl _$$PropertyStreamEventMetaDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyStreamEventMetaDtoImpl(
  PropertyStreamMetaDto.fromJson(json['meta'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$PropertyStreamEventMetaDtoImplToJson(
  _$PropertyStreamEventMetaDtoImpl instance,
) => <String, dynamic>{'meta': instance.meta, 'runtimeType': instance.$type};

_$PropertyStreamEventItemDtoImpl _$$PropertyStreamEventItemDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyStreamEventItemDtoImpl(
  PropertyStreamItemDto.fromJson(json['item'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$PropertyStreamEventItemDtoImplToJson(
  _$PropertyStreamEventItemDtoImpl instance,
) => <String, dynamic>{'item': instance.item, 'runtimeType': instance.$type};

_$PropertyStreamEventDoneDtoImpl _$$PropertyStreamEventDoneDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyStreamEventDoneDtoImpl(
  PropertyStreamDoneDto.fromJson(json['done'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$PropertyStreamEventDoneDtoImplToJson(
  _$PropertyStreamEventDoneDtoImpl instance,
) => <String, dynamic>{'done': instance.done, 'runtimeType': instance.$type};

_$PropertyStreamEventErrorDtoImpl _$$PropertyStreamEventErrorDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyStreamEventErrorDtoImpl(
  PropertyStreamErrorDto.fromJson(json['error'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$PropertyStreamEventErrorDtoImplToJson(
  _$PropertyStreamEventErrorDtoImpl instance,
) => <String, dynamic>{'error': instance.error, 'runtimeType': instance.$type};
