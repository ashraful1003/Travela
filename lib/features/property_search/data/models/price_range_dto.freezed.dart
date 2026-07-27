// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_range_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PriceRangeDto _$PriceRangeDtoFromJson(Map<String, dynamic> json) {
  return _PriceRangeDto.fromJson(json);
}

/// @nodoc
mixin _$PriceRangeDto {
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this PriceRangeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceRangeDtoCopyWith<PriceRangeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeDtoCopyWith<$Res> {
  factory $PriceRangeDtoCopyWith(
    PriceRangeDto value,
    $Res Function(PriceRangeDto) then,
  ) = _$PriceRangeDtoCopyWithImpl<$Res, PriceRangeDto>;
  @useResult
  $Res call({double min, double max, String currency});
}

/// @nodoc
class _$PriceRangeDtoCopyWithImpl<$Res, $Val extends PriceRangeDto>
    implements $PriceRangeDtoCopyWith<$Res> {
  _$PriceRangeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? min = null, Object? max = null, Object? currency = null}) {
    return _then(
      _value.copyWith(
            min: null == min
                ? _value.min
                : min // ignore: cast_nullable_to_non_nullable
                      as double,
            max: null == max
                ? _value.max
                : max // ignore: cast_nullable_to_non_nullable
                      as double,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PriceRangeDtoImplCopyWith<$Res>
    implements $PriceRangeDtoCopyWith<$Res> {
  factory _$$PriceRangeDtoImplCopyWith(
    _$PriceRangeDtoImpl value,
    $Res Function(_$PriceRangeDtoImpl) then,
  ) = __$$PriceRangeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double min, double max, String currency});
}

/// @nodoc
class __$$PriceRangeDtoImplCopyWithImpl<$Res>
    extends _$PriceRangeDtoCopyWithImpl<$Res, _$PriceRangeDtoImpl>
    implements _$$PriceRangeDtoImplCopyWith<$Res> {
  __$$PriceRangeDtoImplCopyWithImpl(
    _$PriceRangeDtoImpl _value,
    $Res Function(_$PriceRangeDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PriceRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? min = null, Object? max = null, Object? currency = null}) {
    return _then(
      _$PriceRangeDtoImpl(
        min: null == min
            ? _value.min
            : min // ignore: cast_nullable_to_non_nullable
                  as double,
        max: null == max
            ? _value.max
            : max // ignore: cast_nullable_to_non_nullable
                  as double,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceRangeDtoImpl implements _PriceRangeDto {
  const _$PriceRangeDtoImpl({
    required this.min,
    required this.max,
    required this.currency,
  });

  factory _$PriceRangeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceRangeDtoImplFromJson(json);

  @override
  final double min;
  @override
  final double max;
  @override
  final String currency;

  @override
  String toString() {
    return 'PriceRangeDto(min: $min, max: $max, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeDtoImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, min, max, currency);

  /// Create a copy of PriceRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeDtoImplCopyWith<_$PriceRangeDtoImpl> get copyWith =>
      __$$PriceRangeDtoImplCopyWithImpl<_$PriceRangeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceRangeDtoImplToJson(this);
  }
}

abstract class _PriceRangeDto implements PriceRangeDto {
  const factory _PriceRangeDto({
    required final double min,
    required final double max,
    required final String currency,
  }) = _$PriceRangeDtoImpl;

  factory _PriceRangeDto.fromJson(Map<String, dynamic> json) =
      _$PriceRangeDtoImpl.fromJson;

  @override
  double get min;
  @override
  double get max;
  @override
  String get currency;

  /// Create a copy of PriceRangeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceRangeDtoImplCopyWith<_$PriceRangeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
