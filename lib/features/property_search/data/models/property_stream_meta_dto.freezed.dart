// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_stream_meta_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PropertyStreamMetaDto _$PropertyStreamMetaDtoFromJson(
  Map<String, dynamic> json,
) {
  return _PropertyStreamMetaDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyStreamMetaDto {
  @JsonKey(name: 'search_id')
  String get searchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_total')
  int? get estimatedTotal => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this PropertyStreamMetaDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyStreamMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyStreamMetaDtoCopyWith<PropertyStreamMetaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStreamMetaDtoCopyWith<$Res> {
  factory $PropertyStreamMetaDtoCopyWith(
    PropertyStreamMetaDto value,
    $Res Function(PropertyStreamMetaDto) then,
  ) = _$PropertyStreamMetaDtoCopyWithImpl<$Res, PropertyStreamMetaDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'search_id') String searchId,
    @JsonKey(name: 'estimated_total') int? estimatedTotal,
    String? timestamp,
  });
}

/// @nodoc
class _$PropertyStreamMetaDtoCopyWithImpl<
  $Res,
  $Val extends PropertyStreamMetaDto
>
    implements $PropertyStreamMetaDtoCopyWith<$Res> {
  _$PropertyStreamMetaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyStreamMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchId = null,
    Object? estimatedTotal = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(
      _value.copyWith(
            searchId: null == searchId
                ? _value.searchId
                : searchId // ignore: cast_nullable_to_non_nullable
                      as String,
            estimatedTotal: freezed == estimatedTotal
                ? _value.estimatedTotal
                : estimatedTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            timestamp: freezed == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PropertyStreamMetaDtoImplCopyWith<$Res>
    implements $PropertyStreamMetaDtoCopyWith<$Res> {
  factory _$$PropertyStreamMetaDtoImplCopyWith(
    _$PropertyStreamMetaDtoImpl value,
    $Res Function(_$PropertyStreamMetaDtoImpl) then,
  ) = __$$PropertyStreamMetaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'search_id') String searchId,
    @JsonKey(name: 'estimated_total') int? estimatedTotal,
    String? timestamp,
  });
}

/// @nodoc
class __$$PropertyStreamMetaDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamMetaDtoCopyWithImpl<$Res, _$PropertyStreamMetaDtoImpl>
    implements _$$PropertyStreamMetaDtoImplCopyWith<$Res> {
  __$$PropertyStreamMetaDtoImplCopyWithImpl(
    _$PropertyStreamMetaDtoImpl _value,
    $Res Function(_$PropertyStreamMetaDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchId = null,
    Object? estimatedTotal = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(
      _$PropertyStreamMetaDtoImpl(
        searchId: null == searchId
            ? _value.searchId
            : searchId // ignore: cast_nullable_to_non_nullable
                  as String,
        estimatedTotal: freezed == estimatedTotal
            ? _value.estimatedTotal
            : estimatedTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        timestamp: freezed == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamMetaDtoImpl implements _PropertyStreamMetaDto {
  const _$PropertyStreamMetaDtoImpl({
    @JsonKey(name: 'search_id') required this.searchId,
    @JsonKey(name: 'estimated_total') this.estimatedTotal,
    this.timestamp,
  });

  factory _$PropertyStreamMetaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyStreamMetaDtoImplFromJson(json);

  @override
  @JsonKey(name: 'search_id')
  final String searchId;
  @override
  @JsonKey(name: 'estimated_total')
  final int? estimatedTotal;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'PropertyStreamMetaDto(searchId: $searchId, estimatedTotal: $estimatedTotal, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamMetaDtoImpl &&
            (identical(other.searchId, searchId) ||
                other.searchId == searchId) &&
            (identical(other.estimatedTotal, estimatedTotal) ||
                other.estimatedTotal == estimatedTotal) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, searchId, estimatedTotal, timestamp);

  /// Create a copy of PropertyStreamMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamMetaDtoImplCopyWith<_$PropertyStreamMetaDtoImpl>
  get copyWith =>
      __$$PropertyStreamMetaDtoImplCopyWithImpl<_$PropertyStreamMetaDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamMetaDtoImplToJson(this);
  }
}

abstract class _PropertyStreamMetaDto implements PropertyStreamMetaDto {
  const factory _PropertyStreamMetaDto({
    @JsonKey(name: 'search_id') required final String searchId,
    @JsonKey(name: 'estimated_total') final int? estimatedTotal,
    final String? timestamp,
  }) = _$PropertyStreamMetaDtoImpl;

  factory _PropertyStreamMetaDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamMetaDtoImpl.fromJson;

  @override
  @JsonKey(name: 'search_id')
  String get searchId;
  @override
  @JsonKey(name: 'estimated_total')
  int? get estimatedTotal;
  @override
  String? get timestamp;

  /// Create a copy of PropertyStreamMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamMetaDtoImplCopyWith<_$PropertyStreamMetaDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
