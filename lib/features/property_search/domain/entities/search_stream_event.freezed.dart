// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_stream_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SearchStreamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchMetadata metadata) metadata,
    required TResult Function(Property property) property,
    required TResult Function() completed,
    required TResult Function(Failure failure) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMetadata metadata)? metadata,
    TResult? Function(Property property)? property,
    TResult? Function()? completed,
    TResult? Function(Failure failure)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMetadata metadata)? metadata,
    TResult Function(Property property)? property,
    TResult Function()? completed,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStreamMetadata value) metadata,
    required TResult Function(SearchStreamProperty value) property,
    required TResult Function(SearchStreamCompleted value) completed,
    required TResult Function(SearchStreamFailure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStreamMetadata value)? metadata,
    TResult? Function(SearchStreamProperty value)? property,
    TResult? Function(SearchStreamCompleted value)? completed,
    TResult? Function(SearchStreamFailure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStreamMetadata value)? metadata,
    TResult Function(SearchStreamProperty value)? property,
    TResult Function(SearchStreamCompleted value)? completed,
    TResult Function(SearchStreamFailure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStreamEventCopyWith<$Res> {
  factory $SearchStreamEventCopyWith(
    SearchStreamEvent value,
    $Res Function(SearchStreamEvent) then,
  ) = _$SearchStreamEventCopyWithImpl<$Res, SearchStreamEvent>;
}

/// @nodoc
class _$SearchStreamEventCopyWithImpl<$Res, $Val extends SearchStreamEvent>
    implements $SearchStreamEventCopyWith<$Res> {
  _$SearchStreamEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchStreamMetadataImplCopyWith<$Res> {
  factory _$$SearchStreamMetadataImplCopyWith(
    _$SearchStreamMetadataImpl value,
    $Res Function(_$SearchStreamMetadataImpl) then,
  ) = __$$SearchStreamMetadataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchMetadata metadata});

  $SearchMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$SearchStreamMetadataImplCopyWithImpl<$Res>
    extends _$SearchStreamEventCopyWithImpl<$Res, _$SearchStreamMetadataImpl>
    implements _$$SearchStreamMetadataImplCopyWith<$Res> {
  __$$SearchStreamMetadataImplCopyWithImpl(
    _$SearchStreamMetadataImpl _value,
    $Res Function(_$SearchStreamMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? metadata = null}) {
    return _then(
      _$SearchStreamMetadataImpl(
        null == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as SearchMetadata,
      ),
    );
  }

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchMetadataCopyWith<$Res> get metadata {
    return $SearchMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc

class _$SearchStreamMetadataImpl implements SearchStreamMetadata {
  const _$SearchStreamMetadataImpl(this.metadata);

  @override
  final SearchMetadata metadata;

  @override
  String toString() {
    return 'SearchStreamEvent.metadata(metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStreamMetadataImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metadata);

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStreamMetadataImplCopyWith<_$SearchStreamMetadataImpl>
  get copyWith =>
      __$$SearchStreamMetadataImplCopyWithImpl<_$SearchStreamMetadataImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchMetadata metadata) metadata,
    required TResult Function(Property property) property,
    required TResult Function() completed,
    required TResult Function(Failure failure) failure,
  }) {
    return metadata(this.metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMetadata metadata)? metadata,
    TResult? Function(Property property)? property,
    TResult? Function()? completed,
    TResult? Function(Failure failure)? failure,
  }) {
    return metadata?.call(this.metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMetadata metadata)? metadata,
    TResult Function(Property property)? property,
    TResult Function()? completed,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (metadata != null) {
      return metadata(this.metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStreamMetadata value) metadata,
    required TResult Function(SearchStreamProperty value) property,
    required TResult Function(SearchStreamCompleted value) completed,
    required TResult Function(SearchStreamFailure value) failure,
  }) {
    return metadata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStreamMetadata value)? metadata,
    TResult? Function(SearchStreamProperty value)? property,
    TResult? Function(SearchStreamCompleted value)? completed,
    TResult? Function(SearchStreamFailure value)? failure,
  }) {
    return metadata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStreamMetadata value)? metadata,
    TResult Function(SearchStreamProperty value)? property,
    TResult Function(SearchStreamCompleted value)? completed,
    TResult Function(SearchStreamFailure value)? failure,
    required TResult orElse(),
  }) {
    if (metadata != null) {
      return metadata(this);
    }
    return orElse();
  }
}

abstract class SearchStreamMetadata implements SearchStreamEvent {
  const factory SearchStreamMetadata(final SearchMetadata metadata) =
      _$SearchStreamMetadataImpl;

  SearchMetadata get metadata;

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStreamMetadataImplCopyWith<_$SearchStreamMetadataImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchStreamPropertyImplCopyWith<$Res> {
  factory _$$SearchStreamPropertyImplCopyWith(
    _$SearchStreamPropertyImpl value,
    $Res Function(_$SearchStreamPropertyImpl) then,
  ) = __$$SearchStreamPropertyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Property property});

  $PropertyCopyWith<$Res> get property;
}

/// @nodoc
class __$$SearchStreamPropertyImplCopyWithImpl<$Res>
    extends _$SearchStreamEventCopyWithImpl<$Res, _$SearchStreamPropertyImpl>
    implements _$$SearchStreamPropertyImplCopyWith<$Res> {
  __$$SearchStreamPropertyImplCopyWithImpl(
    _$SearchStreamPropertyImpl _value,
    $Res Function(_$SearchStreamPropertyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? property = null}) {
    return _then(
      _$SearchStreamPropertyImpl(
        null == property
            ? _value.property
            : property // ignore: cast_nullable_to_non_nullable
                  as Property,
      ),
    );
  }

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res> get property {
    return $PropertyCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value));
    });
  }
}

/// @nodoc

class _$SearchStreamPropertyImpl implements SearchStreamProperty {
  const _$SearchStreamPropertyImpl(this.property);

  @override
  final Property property;

  @override
  String toString() {
    return 'SearchStreamEvent.property(property: $property)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStreamPropertyImpl &&
            (identical(other.property, property) ||
                other.property == property));
  }

  @override
  int get hashCode => Object.hash(runtimeType, property);

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStreamPropertyImplCopyWith<_$SearchStreamPropertyImpl>
  get copyWith =>
      __$$SearchStreamPropertyImplCopyWithImpl<_$SearchStreamPropertyImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchMetadata metadata) metadata,
    required TResult Function(Property property) property,
    required TResult Function() completed,
    required TResult Function(Failure failure) failure,
  }) {
    return property(this.property);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMetadata metadata)? metadata,
    TResult? Function(Property property)? property,
    TResult? Function()? completed,
    TResult? Function(Failure failure)? failure,
  }) {
    return property?.call(this.property);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMetadata metadata)? metadata,
    TResult Function(Property property)? property,
    TResult Function()? completed,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (property != null) {
      return property(this.property);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStreamMetadata value) metadata,
    required TResult Function(SearchStreamProperty value) property,
    required TResult Function(SearchStreamCompleted value) completed,
    required TResult Function(SearchStreamFailure value) failure,
  }) {
    return property(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStreamMetadata value)? metadata,
    TResult? Function(SearchStreamProperty value)? property,
    TResult? Function(SearchStreamCompleted value)? completed,
    TResult? Function(SearchStreamFailure value)? failure,
  }) {
    return property?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStreamMetadata value)? metadata,
    TResult Function(SearchStreamProperty value)? property,
    TResult Function(SearchStreamCompleted value)? completed,
    TResult Function(SearchStreamFailure value)? failure,
    required TResult orElse(),
  }) {
    if (property != null) {
      return property(this);
    }
    return orElse();
  }
}

abstract class SearchStreamProperty implements SearchStreamEvent {
  const factory SearchStreamProperty(final Property property) =
      _$SearchStreamPropertyImpl;

  Property get property;

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStreamPropertyImplCopyWith<_$SearchStreamPropertyImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchStreamCompletedImplCopyWith<$Res> {
  factory _$$SearchStreamCompletedImplCopyWith(
    _$SearchStreamCompletedImpl value,
    $Res Function(_$SearchStreamCompletedImpl) then,
  ) = __$$SearchStreamCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchStreamCompletedImplCopyWithImpl<$Res>
    extends _$SearchStreamEventCopyWithImpl<$Res, _$SearchStreamCompletedImpl>
    implements _$$SearchStreamCompletedImplCopyWith<$Res> {
  __$$SearchStreamCompletedImplCopyWithImpl(
    _$SearchStreamCompletedImpl _value,
    $Res Function(_$SearchStreamCompletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchStreamCompletedImpl implements SearchStreamCompleted {
  const _$SearchStreamCompletedImpl();

  @override
  String toString() {
    return 'SearchStreamEvent.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStreamCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchMetadata metadata) metadata,
    required TResult Function(Property property) property,
    required TResult Function() completed,
    required TResult Function(Failure failure) failure,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMetadata metadata)? metadata,
    TResult? Function(Property property)? property,
    TResult? Function()? completed,
    TResult? Function(Failure failure)? failure,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMetadata metadata)? metadata,
    TResult Function(Property property)? property,
    TResult Function()? completed,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStreamMetadata value) metadata,
    required TResult Function(SearchStreamProperty value) property,
    required TResult Function(SearchStreamCompleted value) completed,
    required TResult Function(SearchStreamFailure value) failure,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStreamMetadata value)? metadata,
    TResult? Function(SearchStreamProperty value)? property,
    TResult? Function(SearchStreamCompleted value)? completed,
    TResult? Function(SearchStreamFailure value)? failure,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStreamMetadata value)? metadata,
    TResult Function(SearchStreamProperty value)? property,
    TResult Function(SearchStreamCompleted value)? completed,
    TResult Function(SearchStreamFailure value)? failure,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class SearchStreamCompleted implements SearchStreamEvent {
  const factory SearchStreamCompleted() = _$SearchStreamCompletedImpl;
}

/// @nodoc
abstract class _$$SearchStreamFailureImplCopyWith<$Res> {
  factory _$$SearchStreamFailureImplCopyWith(
    _$SearchStreamFailureImpl value,
    $Res Function(_$SearchStreamFailureImpl) then,
  ) = __$$SearchStreamFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$SearchStreamFailureImplCopyWithImpl<$Res>
    extends _$SearchStreamEventCopyWithImpl<$Res, _$SearchStreamFailureImpl>
    implements _$$SearchStreamFailureImplCopyWith<$Res> {
  __$$SearchStreamFailureImplCopyWithImpl(
    _$SearchStreamFailureImpl _value,
    $Res Function(_$SearchStreamFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? failure = null}) {
    return _then(
      _$SearchStreamFailureImpl(
        null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as Failure,
      ),
    );
  }
}

/// @nodoc

class _$SearchStreamFailureImpl implements SearchStreamFailure {
  const _$SearchStreamFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SearchStreamEvent.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStreamFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStreamFailureImplCopyWith<_$SearchStreamFailureImpl> get copyWith =>
      __$$SearchStreamFailureImplCopyWithImpl<_$SearchStreamFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchMetadata metadata) metadata,
    required TResult Function(Property property) property,
    required TResult Function() completed,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMetadata metadata)? metadata,
    TResult? Function(Property property)? property,
    TResult? Function()? completed,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMetadata metadata)? metadata,
    TResult Function(Property property)? property,
    TResult Function()? completed,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStreamMetadata value) metadata,
    required TResult Function(SearchStreamProperty value) property,
    required TResult Function(SearchStreamCompleted value) completed,
    required TResult Function(SearchStreamFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStreamMetadata value)? metadata,
    TResult? Function(SearchStreamProperty value)? property,
    TResult? Function(SearchStreamCompleted value)? completed,
    TResult? Function(SearchStreamFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStreamMetadata value)? metadata,
    TResult Function(SearchStreamProperty value)? property,
    TResult Function(SearchStreamCompleted value)? completed,
    TResult Function(SearchStreamFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SearchStreamFailure implements SearchStreamEvent {
  const factory SearchStreamFailure(final Failure failure) =
      _$SearchStreamFailureImpl;

  Failure get failure;

  /// Create a copy of SearchStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStreamFailureImplCopyWith<_$SearchStreamFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
