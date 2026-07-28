// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_stream_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PropertyStreamItemDto _$PropertyStreamItemDtoFromJson(
  Map<String, dynamic> json,
) {
  return _PropertyStreamItemDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyStreamItemDto {
  PropertyDto get property => throw _privateConstructorUsedError;

  /// Serializes this PropertyStreamItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyStreamItemDtoCopyWith<PropertyStreamItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStreamItemDtoCopyWith<$Res> {
  factory $PropertyStreamItemDtoCopyWith(
    PropertyStreamItemDto value,
    $Res Function(PropertyStreamItemDto) then,
  ) = _$PropertyStreamItemDtoCopyWithImpl<$Res, PropertyStreamItemDto>;
  @useResult
  $Res call({PropertyDto property});

  $PropertyDtoCopyWith<$Res> get property;
}

/// @nodoc
class _$PropertyStreamItemDtoCopyWithImpl<
  $Res,
  $Val extends PropertyStreamItemDto
>
    implements $PropertyStreamItemDtoCopyWith<$Res> {
  _$PropertyStreamItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? property = null}) {
    return _then(
      _value.copyWith(
            property: null == property
                ? _value.property
                : property // ignore: cast_nullable_to_non_nullable
                      as PropertyDto,
          )
          as $Val,
    );
  }

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyDtoCopyWith<$Res> get property {
    return $PropertyDtoCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyStreamItemDtoImplCopyWith<$Res>
    implements $PropertyStreamItemDtoCopyWith<$Res> {
  factory _$$PropertyStreamItemDtoImplCopyWith(
    _$PropertyStreamItemDtoImpl value,
    $Res Function(_$PropertyStreamItemDtoImpl) then,
  ) = __$$PropertyStreamItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PropertyDto property});

  @override
  $PropertyDtoCopyWith<$Res> get property;
}

/// @nodoc
class __$$PropertyStreamItemDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamItemDtoCopyWithImpl<$Res, _$PropertyStreamItemDtoImpl>
    implements _$$PropertyStreamItemDtoImplCopyWith<$Res> {
  __$$PropertyStreamItemDtoImplCopyWithImpl(
    _$PropertyStreamItemDtoImpl _value,
    $Res Function(_$PropertyStreamItemDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? property = null}) {
    return _then(
      _$PropertyStreamItemDtoImpl(
        property: null == property
            ? _value.property
            : property // ignore: cast_nullable_to_non_nullable
                  as PropertyDto,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamItemDtoImpl implements _PropertyStreamItemDto {
  const _$PropertyStreamItemDtoImpl({required this.property});

  factory _$PropertyStreamItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyStreamItemDtoImplFromJson(json);

  @override
  final PropertyDto property;

  @override
  String toString() {
    return 'PropertyStreamItemDto(property: $property)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamItemDtoImpl &&
            (identical(other.property, property) ||
                other.property == property));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, property);

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamItemDtoImplCopyWith<_$PropertyStreamItemDtoImpl>
  get copyWith =>
      __$$PropertyStreamItemDtoImplCopyWithImpl<_$PropertyStreamItemDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamItemDtoImplToJson(this);
  }
}

abstract class _PropertyStreamItemDto implements PropertyStreamItemDto {
  const factory _PropertyStreamItemDto({required final PropertyDto property}) =
      _$PropertyStreamItemDtoImpl;

  factory _PropertyStreamItemDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamItemDtoImpl.fromJson;

  @override
  PropertyDto get property;

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamItemDtoImplCopyWith<_$PropertyStreamItemDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
