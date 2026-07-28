// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_stream_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyStreamErrorDtoImpl _$$PropertyStreamErrorDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyStreamErrorDtoImpl(
  message: json['message'] as String,
  code: (json['code'] as num?)?.toInt(),
);

Map<String, dynamic> _$$PropertyStreamErrorDtoImplToJson(
  _$PropertyStreamErrorDtoImpl instance,
) => <String, dynamic>{'message': instance.message, 'code': instance.code};
