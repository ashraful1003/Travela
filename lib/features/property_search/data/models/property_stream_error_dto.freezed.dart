// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_stream_error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PropertyStreamErrorDto _$PropertyStreamErrorDtoFromJson(
  Map<String, dynamic> json,
) {
  return _PropertyStreamErrorDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyStreamErrorDto {
  String get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  /// Serializes this PropertyStreamErrorDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyStreamErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyStreamErrorDtoCopyWith<PropertyStreamErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStreamErrorDtoCopyWith<$Res> {
  factory $PropertyStreamErrorDtoCopyWith(
    PropertyStreamErrorDto value,
    $Res Function(PropertyStreamErrorDto) then,
  ) = _$PropertyStreamErrorDtoCopyWithImpl<$Res, PropertyStreamErrorDto>;
  @useResult
  $Res call({String message, int? code});
}

/// @nodoc
class _$PropertyStreamErrorDtoCopyWithImpl<
  $Res,
  $Val extends PropertyStreamErrorDto
>
    implements $PropertyStreamErrorDtoCopyWith<$Res> {
  _$PropertyStreamErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyStreamErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = freezed}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PropertyStreamErrorDtoImplCopyWith<$Res>
    implements $PropertyStreamErrorDtoCopyWith<$Res> {
  factory _$$PropertyStreamErrorDtoImplCopyWith(
    _$PropertyStreamErrorDtoImpl value,
    $Res Function(_$PropertyStreamErrorDtoImpl) then,
  ) = __$$PropertyStreamErrorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int? code});
}

/// @nodoc
class __$$PropertyStreamErrorDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamErrorDtoCopyWithImpl<$Res, _$PropertyStreamErrorDtoImpl>
    implements _$$PropertyStreamErrorDtoImplCopyWith<$Res> {
  __$$PropertyStreamErrorDtoImplCopyWithImpl(
    _$PropertyStreamErrorDtoImpl _value,
    $Res Function(_$PropertyStreamErrorDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = freezed}) {
    return _then(
      _$PropertyStreamErrorDtoImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamErrorDtoImpl implements _PropertyStreamErrorDto {
  const _$PropertyStreamErrorDtoImpl({required this.message, this.code});

  factory _$PropertyStreamErrorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyStreamErrorDtoImplFromJson(json);

  @override
  final String message;
  @override
  final int? code;

  @override
  String toString() {
    return 'PropertyStreamErrorDto(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamErrorDtoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of PropertyStreamErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamErrorDtoImplCopyWith<_$PropertyStreamErrorDtoImpl>
  get copyWith =>
      __$$PropertyStreamErrorDtoImplCopyWithImpl<_$PropertyStreamErrorDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamErrorDtoImplToJson(this);
  }
}

abstract class _PropertyStreamErrorDto implements PropertyStreamErrorDto {
  const factory _PropertyStreamErrorDto({
    required final String message,
    final int? code,
  }) = _$PropertyStreamErrorDtoImpl;

  factory _PropertyStreamErrorDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamErrorDtoImpl.fromJson;

  @override
  String get message;
  @override
  int? get code;

  /// Create a copy of PropertyStreamErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamErrorDtoImplCopyWith<_$PropertyStreamErrorDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
