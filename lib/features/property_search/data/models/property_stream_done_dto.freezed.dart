// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_stream_done_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PropertyStreamDoneDto _$PropertyStreamDoneDtoFromJson(
  Map<String, dynamic> json,
) {
  return _PropertyStreamDoneDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyStreamDoneDto {
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this PropertyStreamDoneDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyStreamDoneDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyStreamDoneDtoCopyWith<PropertyStreamDoneDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStreamDoneDtoCopyWith<$Res> {
  factory $PropertyStreamDoneDtoCopyWith(
    PropertyStreamDoneDto value,
    $Res Function(PropertyStreamDoneDto) then,
  ) = _$PropertyStreamDoneDtoCopyWithImpl<$Res, PropertyStreamDoneDto>;
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class _$PropertyStreamDoneDtoCopyWithImpl<
  $Res,
  $Val extends PropertyStreamDoneDto
>
    implements $PropertyStreamDoneDtoCopyWith<$Res> {
  _$PropertyStreamDoneDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyStreamDoneDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = freezed}) {
    return _then(
      _value.copyWith(
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PropertyStreamDoneDtoImplCopyWith<$Res>
    implements $PropertyStreamDoneDtoCopyWith<$Res> {
  factory _$$PropertyStreamDoneDtoImplCopyWith(
    _$PropertyStreamDoneDtoImpl value,
    $Res Function(_$PropertyStreamDoneDtoImpl) then,
  ) = __$$PropertyStreamDoneDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class __$$PropertyStreamDoneDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamDoneDtoCopyWithImpl<$Res, _$PropertyStreamDoneDtoImpl>
    implements _$$PropertyStreamDoneDtoImplCopyWith<$Res> {
  __$$PropertyStreamDoneDtoImplCopyWithImpl(
    _$PropertyStreamDoneDtoImpl _value,
    $Res Function(_$PropertyStreamDoneDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamDoneDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = freezed}) {
    return _then(
      _$PropertyStreamDoneDtoImpl(
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamDoneDtoImpl implements _PropertyStreamDoneDto {
  const _$PropertyStreamDoneDtoImpl({this.reason});

  factory _$PropertyStreamDoneDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyStreamDoneDtoImplFromJson(json);

  @override
  final String? reason;

  @override
  String toString() {
    return 'PropertyStreamDoneDto(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamDoneDtoImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of PropertyStreamDoneDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamDoneDtoImplCopyWith<_$PropertyStreamDoneDtoImpl>
  get copyWith =>
      __$$PropertyStreamDoneDtoImplCopyWithImpl<_$PropertyStreamDoneDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamDoneDtoImplToJson(this);
  }
}

abstract class _PropertyStreamDoneDto implements PropertyStreamDoneDto {
  const factory _PropertyStreamDoneDto({final String? reason}) =
      _$PropertyStreamDoneDtoImpl;

  factory _PropertyStreamDoneDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamDoneDtoImpl.fromJson;

  @override
  String? get reason;

  /// Create a copy of PropertyStreamDoneDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamDoneDtoImplCopyWith<_$PropertyStreamDoneDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
