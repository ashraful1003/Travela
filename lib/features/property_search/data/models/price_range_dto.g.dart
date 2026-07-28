// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_range_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceRangeDtoImpl _$$PriceRangeDtoImplFromJson(Map<String, dynamic> json) =>
    _$PriceRangeDtoImpl(
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$PriceRangeDtoImplToJson(_$PriceRangeDtoImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'currency': instance.currency,
    };
