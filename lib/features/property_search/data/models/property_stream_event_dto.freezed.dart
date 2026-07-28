// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_stream_event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PropertyStreamEventDto _$PropertyStreamEventDtoFromJson(
  Map<String, dynamic> json,
) {
  switch (json['runtimeType']) {
    case 'metadata':
      return PropertyStreamEventMetaDto.fromJson(json);
    case 'item':
      return PropertyStreamEventItemDto.fromJson(json);
    case 'done':
      return PropertyStreamEventDoneDto.fromJson(json);
    case 'error':
      return PropertyStreamEventErrorDto.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'PropertyStreamEventDto',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$PropertyStreamEventDto {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStreamMetaDto meta) metadata,
    required TResult Function(PropertyStreamItemDto item) item,
    required TResult Function(PropertyStreamDoneDto done) done,
    required TResult Function(PropertyStreamErrorDto error) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamMetaDto meta)? metadata,
    TResult? Function(PropertyStreamItemDto item)? item,
    TResult? Function(PropertyStreamDoneDto done)? done,
    TResult? Function(PropertyStreamErrorDto error)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStreamMetaDto meta)? metadata,
    TResult Function(PropertyStreamItemDto item)? item,
    TResult Function(PropertyStreamDoneDto done)? done,
    TResult Function(PropertyStreamErrorDto error)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertyStreamEventMetaDto value) metadata,
    required TResult Function(PropertyStreamEventItemDto value) item,
    required TResult Function(PropertyStreamEventDoneDto value) done,
    required TResult Function(PropertyStreamEventErrorDto value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamEventMetaDto value)? metadata,
    TResult? Function(PropertyStreamEventItemDto value)? item,
    TResult? Function(PropertyStreamEventDoneDto value)? done,
    TResult? Function(PropertyStreamEventErrorDto value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertyStreamEventMetaDto value)? metadata,
    TResult Function(PropertyStreamEventItemDto value)? item,
    TResult Function(PropertyStreamEventDoneDto value)? done,
    TResult Function(PropertyStreamEventErrorDto value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this PropertyStreamEventDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStreamEventDtoCopyWith<$Res> {
  factory $PropertyStreamEventDtoCopyWith(
    PropertyStreamEventDto value,
    $Res Function(PropertyStreamEventDto) then,
  ) = _$PropertyStreamEventDtoCopyWithImpl<$Res, PropertyStreamEventDto>;
}

/// @nodoc
class _$PropertyStreamEventDtoCopyWithImpl<
  $Res,
  $Val extends PropertyStreamEventDto
>
    implements $PropertyStreamEventDtoCopyWith<$Res> {
  _$PropertyStreamEventDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PropertyStreamEventMetaDtoImplCopyWith<$Res> {
  factory _$$PropertyStreamEventMetaDtoImplCopyWith(
    _$PropertyStreamEventMetaDtoImpl value,
    $Res Function(_$PropertyStreamEventMetaDtoImpl) then,
  ) = __$$PropertyStreamEventMetaDtoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PropertyStreamMetaDto meta});

  $PropertyStreamMetaDtoCopyWith<$Res> get meta;
}

/// @nodoc
class __$$PropertyStreamEventMetaDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamEventDtoCopyWithImpl<
          $Res,
          _$PropertyStreamEventMetaDtoImpl
        >
    implements _$$PropertyStreamEventMetaDtoImplCopyWith<$Res> {
  __$$PropertyStreamEventMetaDtoImplCopyWithImpl(
    _$PropertyStreamEventMetaDtoImpl _value,
    $Res Function(_$PropertyStreamEventMetaDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? meta = null}) {
    return _then(
      _$PropertyStreamEventMetaDtoImpl(
        null == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as PropertyStreamMetaDto,
      ),
    );
  }

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyStreamMetaDtoCopyWith<$Res> get meta {
    return $PropertyStreamMetaDtoCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamEventMetaDtoImpl implements PropertyStreamEventMetaDto {
  const _$PropertyStreamEventMetaDtoImpl(this.meta, {final String? $type})
    : $type = $type ?? 'metadata';

  factory _$PropertyStreamEventMetaDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$PropertyStreamEventMetaDtoImplFromJson(json);

  @override
  final PropertyStreamMetaDto meta;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyStreamEventDto.metadata(meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamEventMetaDtoImpl &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meta);

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamEventMetaDtoImplCopyWith<_$PropertyStreamEventMetaDtoImpl>
  get copyWith =>
      __$$PropertyStreamEventMetaDtoImplCopyWithImpl<
        _$PropertyStreamEventMetaDtoImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStreamMetaDto meta) metadata,
    required TResult Function(PropertyStreamItemDto item) item,
    required TResult Function(PropertyStreamDoneDto done) done,
    required TResult Function(PropertyStreamErrorDto error) error,
  }) {
    return metadata(meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamMetaDto meta)? metadata,
    TResult? Function(PropertyStreamItemDto item)? item,
    TResult? Function(PropertyStreamDoneDto done)? done,
    TResult? Function(PropertyStreamErrorDto error)? error,
  }) {
    return metadata?.call(meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStreamMetaDto meta)? metadata,
    TResult Function(PropertyStreamItemDto item)? item,
    TResult Function(PropertyStreamDoneDto done)? done,
    TResult Function(PropertyStreamErrorDto error)? error,
    required TResult orElse(),
  }) {
    if (metadata != null) {
      return metadata(meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertyStreamEventMetaDto value) metadata,
    required TResult Function(PropertyStreamEventItemDto value) item,
    required TResult Function(PropertyStreamEventDoneDto value) done,
    required TResult Function(PropertyStreamEventErrorDto value) error,
  }) {
    return metadata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamEventMetaDto value)? metadata,
    TResult? Function(PropertyStreamEventItemDto value)? item,
    TResult? Function(PropertyStreamEventDoneDto value)? done,
    TResult? Function(PropertyStreamEventErrorDto value)? error,
  }) {
    return metadata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertyStreamEventMetaDto value)? metadata,
    TResult Function(PropertyStreamEventItemDto value)? item,
    TResult Function(PropertyStreamEventDoneDto value)? done,
    TResult Function(PropertyStreamEventErrorDto value)? error,
    required TResult orElse(),
  }) {
    if (metadata != null) {
      return metadata(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamEventMetaDtoImplToJson(this);
  }
}

abstract class PropertyStreamEventMetaDto implements PropertyStreamEventDto {
  const factory PropertyStreamEventMetaDto(final PropertyStreamMetaDto meta) =
      _$PropertyStreamEventMetaDtoImpl;

  factory PropertyStreamEventMetaDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamEventMetaDtoImpl.fromJson;

  PropertyStreamMetaDto get meta;

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamEventMetaDtoImplCopyWith<_$PropertyStreamEventMetaDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PropertyStreamEventItemDtoImplCopyWith<$Res> {
  factory _$$PropertyStreamEventItemDtoImplCopyWith(
    _$PropertyStreamEventItemDtoImpl value,
    $Res Function(_$PropertyStreamEventItemDtoImpl) then,
  ) = __$$PropertyStreamEventItemDtoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PropertyStreamItemDto item});

  $PropertyStreamItemDtoCopyWith<$Res> get item;
}

/// @nodoc
class __$$PropertyStreamEventItemDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamEventDtoCopyWithImpl<
          $Res,
          _$PropertyStreamEventItemDtoImpl
        >
    implements _$$PropertyStreamEventItemDtoImplCopyWith<$Res> {
  __$$PropertyStreamEventItemDtoImplCopyWithImpl(
    _$PropertyStreamEventItemDtoImpl _value,
    $Res Function(_$PropertyStreamEventItemDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? item = null}) {
    return _then(
      _$PropertyStreamEventItemDtoImpl(
        null == item
            ? _value.item
            : item // ignore: cast_nullable_to_non_nullable
                  as PropertyStreamItemDto,
      ),
    );
  }

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyStreamItemDtoCopyWith<$Res> get item {
    return $PropertyStreamItemDtoCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamEventItemDtoImpl implements PropertyStreamEventItemDto {
  const _$PropertyStreamEventItemDtoImpl(this.item, {final String? $type})
    : $type = $type ?? 'item';

  factory _$PropertyStreamEventItemDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$PropertyStreamEventItemDtoImplFromJson(json);

  @override
  final PropertyStreamItemDto item;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyStreamEventDto.item(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamEventItemDtoImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamEventItemDtoImplCopyWith<_$PropertyStreamEventItemDtoImpl>
  get copyWith =>
      __$$PropertyStreamEventItemDtoImplCopyWithImpl<
        _$PropertyStreamEventItemDtoImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStreamMetaDto meta) metadata,
    required TResult Function(PropertyStreamItemDto item) item,
    required TResult Function(PropertyStreamDoneDto done) done,
    required TResult Function(PropertyStreamErrorDto error) error,
  }) {
    return item(this.item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamMetaDto meta)? metadata,
    TResult? Function(PropertyStreamItemDto item)? item,
    TResult? Function(PropertyStreamDoneDto done)? done,
    TResult? Function(PropertyStreamErrorDto error)? error,
  }) {
    return item?.call(this.item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStreamMetaDto meta)? metadata,
    TResult Function(PropertyStreamItemDto item)? item,
    TResult Function(PropertyStreamDoneDto done)? done,
    TResult Function(PropertyStreamErrorDto error)? error,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this.item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertyStreamEventMetaDto value) metadata,
    required TResult Function(PropertyStreamEventItemDto value) item,
    required TResult Function(PropertyStreamEventDoneDto value) done,
    required TResult Function(PropertyStreamEventErrorDto value) error,
  }) {
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamEventMetaDto value)? metadata,
    TResult? Function(PropertyStreamEventItemDto value)? item,
    TResult? Function(PropertyStreamEventDoneDto value)? done,
    TResult? Function(PropertyStreamEventErrorDto value)? error,
  }) {
    return item?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertyStreamEventMetaDto value)? metadata,
    TResult Function(PropertyStreamEventItemDto value)? item,
    TResult Function(PropertyStreamEventDoneDto value)? done,
    TResult Function(PropertyStreamEventErrorDto value)? error,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamEventItemDtoImplToJson(this);
  }
}

abstract class PropertyStreamEventItemDto implements PropertyStreamEventDto {
  const factory PropertyStreamEventItemDto(final PropertyStreamItemDto item) =
      _$PropertyStreamEventItemDtoImpl;

  factory PropertyStreamEventItemDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamEventItemDtoImpl.fromJson;

  PropertyStreamItemDto get item;

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamEventItemDtoImplCopyWith<_$PropertyStreamEventItemDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PropertyStreamEventDoneDtoImplCopyWith<$Res> {
  factory _$$PropertyStreamEventDoneDtoImplCopyWith(
    _$PropertyStreamEventDoneDtoImpl value,
    $Res Function(_$PropertyStreamEventDoneDtoImpl) then,
  ) = __$$PropertyStreamEventDoneDtoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PropertyStreamDoneDto done});

  $PropertyStreamDoneDtoCopyWith<$Res> get done;
}

/// @nodoc
class __$$PropertyStreamEventDoneDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamEventDtoCopyWithImpl<
          $Res,
          _$PropertyStreamEventDoneDtoImpl
        >
    implements _$$PropertyStreamEventDoneDtoImplCopyWith<$Res> {
  __$$PropertyStreamEventDoneDtoImplCopyWithImpl(
    _$PropertyStreamEventDoneDtoImpl _value,
    $Res Function(_$PropertyStreamEventDoneDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? done = null}) {
    return _then(
      _$PropertyStreamEventDoneDtoImpl(
        null == done
            ? _value.done
            : done // ignore: cast_nullable_to_non_nullable
                  as PropertyStreamDoneDto,
      ),
    );
  }

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyStreamDoneDtoCopyWith<$Res> get done {
    return $PropertyStreamDoneDtoCopyWith<$Res>(_value.done, (value) {
      return _then(_value.copyWith(done: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamEventDoneDtoImpl implements PropertyStreamEventDoneDto {
  const _$PropertyStreamEventDoneDtoImpl(this.done, {final String? $type})
    : $type = $type ?? 'done';

  factory _$PropertyStreamEventDoneDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$PropertyStreamEventDoneDtoImplFromJson(json);

  @override
  final PropertyStreamDoneDto done;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyStreamEventDto.done(done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamEventDoneDtoImpl &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, done);

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamEventDoneDtoImplCopyWith<_$PropertyStreamEventDoneDtoImpl>
  get copyWith =>
      __$$PropertyStreamEventDoneDtoImplCopyWithImpl<
        _$PropertyStreamEventDoneDtoImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStreamMetaDto meta) metadata,
    required TResult Function(PropertyStreamItemDto item) item,
    required TResult Function(PropertyStreamDoneDto done) done,
    required TResult Function(PropertyStreamErrorDto error) error,
  }) {
    return done(this.done);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamMetaDto meta)? metadata,
    TResult? Function(PropertyStreamItemDto item)? item,
    TResult? Function(PropertyStreamDoneDto done)? done,
    TResult? Function(PropertyStreamErrorDto error)? error,
  }) {
    return done?.call(this.done);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStreamMetaDto meta)? metadata,
    TResult Function(PropertyStreamItemDto item)? item,
    TResult Function(PropertyStreamDoneDto done)? done,
    TResult Function(PropertyStreamErrorDto error)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this.done);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertyStreamEventMetaDto value) metadata,
    required TResult Function(PropertyStreamEventItemDto value) item,
    required TResult Function(PropertyStreamEventDoneDto value) done,
    required TResult Function(PropertyStreamEventErrorDto value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamEventMetaDto value)? metadata,
    TResult? Function(PropertyStreamEventItemDto value)? item,
    TResult? Function(PropertyStreamEventDoneDto value)? done,
    TResult? Function(PropertyStreamEventErrorDto value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertyStreamEventMetaDto value)? metadata,
    TResult Function(PropertyStreamEventItemDto value)? item,
    TResult Function(PropertyStreamEventDoneDto value)? done,
    TResult Function(PropertyStreamEventErrorDto value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamEventDoneDtoImplToJson(this);
  }
}

abstract class PropertyStreamEventDoneDto implements PropertyStreamEventDto {
  const factory PropertyStreamEventDoneDto(final PropertyStreamDoneDto done) =
      _$PropertyStreamEventDoneDtoImpl;

  factory PropertyStreamEventDoneDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamEventDoneDtoImpl.fromJson;

  PropertyStreamDoneDto get done;

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamEventDoneDtoImplCopyWith<_$PropertyStreamEventDoneDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PropertyStreamEventErrorDtoImplCopyWith<$Res> {
  factory _$$PropertyStreamEventErrorDtoImplCopyWith(
    _$PropertyStreamEventErrorDtoImpl value,
    $Res Function(_$PropertyStreamEventErrorDtoImpl) then,
  ) = __$$PropertyStreamEventErrorDtoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PropertyStreamErrorDto error});

  $PropertyStreamErrorDtoCopyWith<$Res> get error;
}

/// @nodoc
class __$$PropertyStreamEventErrorDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamEventDtoCopyWithImpl<
          $Res,
          _$PropertyStreamEventErrorDtoImpl
        >
    implements _$$PropertyStreamEventErrorDtoImplCopyWith<$Res> {
  __$$PropertyStreamEventErrorDtoImplCopyWithImpl(
    _$PropertyStreamEventErrorDtoImpl _value,
    $Res Function(_$PropertyStreamEventErrorDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$PropertyStreamEventErrorDtoImpl(
        null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as PropertyStreamErrorDto,
      ),
    );
  }

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyStreamErrorDtoCopyWith<$Res> get error {
    return $PropertyStreamErrorDtoCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamEventErrorDtoImpl implements PropertyStreamEventErrorDto {
  const _$PropertyStreamEventErrorDtoImpl(this.error, {final String? $type})
    : $type = $type ?? 'error';

  factory _$PropertyStreamEventErrorDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$PropertyStreamEventErrorDtoImplFromJson(json);

  @override
  final PropertyStreamErrorDto error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyStreamEventDto.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamEventErrorDtoImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamEventErrorDtoImplCopyWith<_$PropertyStreamEventErrorDtoImpl>
  get copyWith =>
      __$$PropertyStreamEventErrorDtoImplCopyWithImpl<
        _$PropertyStreamEventErrorDtoImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStreamMetaDto meta) metadata,
    required TResult Function(PropertyStreamItemDto item) item,
    required TResult Function(PropertyStreamDoneDto done) done,
    required TResult Function(PropertyStreamErrorDto error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamMetaDto meta)? metadata,
    TResult? Function(PropertyStreamItemDto item)? item,
    TResult? Function(PropertyStreamDoneDto done)? done,
    TResult? Function(PropertyStreamErrorDto error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStreamMetaDto meta)? metadata,
    TResult Function(PropertyStreamItemDto item)? item,
    TResult Function(PropertyStreamDoneDto done)? done,
    TResult Function(PropertyStreamErrorDto error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertyStreamEventMetaDto value) metadata,
    required TResult Function(PropertyStreamEventItemDto value) item,
    required TResult Function(PropertyStreamEventDoneDto value) done,
    required TResult Function(PropertyStreamEventErrorDto value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertyStreamEventMetaDto value)? metadata,
    TResult? Function(PropertyStreamEventItemDto value)? item,
    TResult? Function(PropertyStreamEventDoneDto value)? done,
    TResult? Function(PropertyStreamEventErrorDto value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertyStreamEventMetaDto value)? metadata,
    TResult Function(PropertyStreamEventItemDto value)? item,
    TResult Function(PropertyStreamEventDoneDto value)? done,
    TResult Function(PropertyStreamEventErrorDto value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamEventErrorDtoImplToJson(this);
  }
}

abstract class PropertyStreamEventErrorDto implements PropertyStreamEventDto {
  const factory PropertyStreamEventErrorDto(
    final PropertyStreamErrorDto error,
  ) = _$PropertyStreamEventErrorDtoImpl;

  factory PropertyStreamEventErrorDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamEventErrorDtoImpl.fromJson;

  PropertyStreamErrorDto get error;

  /// Create a copy of PropertyStreamEventDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamEventErrorDtoImplCopyWith<_$PropertyStreamEventErrorDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
