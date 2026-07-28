// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PropertySearchState {
  PropertySearchStatus get status => throw _privateConstructorUsedError;
  List<Property> get properties => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  /// Metadata emitted by the streaming search (e.g. search id, estimated
  /// total). Null until the first metadata event of a search arrives.
  SearchMetadata? get metadata => throw _privateConstructorUsedError;

  /// Create a copy of PropertySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertySearchStateCopyWith<PropertySearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertySearchStateCopyWith<$Res> {
  factory $PropertySearchStateCopyWith(
    PropertySearchState value,
    $Res Function(PropertySearchState) then,
  ) = _$PropertySearchStateCopyWithImpl<$Res, PropertySearchState>;
  @useResult
  $Res call({
    PropertySearchStatus status,
    List<Property> properties,
    Failure? failure,
    SearchMetadata? metadata,
  });

  $SearchMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$PropertySearchStateCopyWithImpl<$Res, $Val extends PropertySearchState>
    implements $PropertySearchStateCopyWith<$Res> {
  _$PropertySearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertySearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? properties = null,
    Object? failure = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as PropertySearchStatus,
            properties: null == properties
                ? _value.properties
                : properties // ignore: cast_nullable_to_non_nullable
                      as List<Property>,
            failure: freezed == failure
                ? _value.failure
                : failure // ignore: cast_nullable_to_non_nullable
                      as Failure?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as SearchMetadata?,
          )
          as $Val,
    );
  }

  /// Create a copy of PropertySearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $SearchMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertySearchStateImplCopyWith<$Res>
    implements $PropertySearchStateCopyWith<$Res> {
  factory _$$PropertySearchStateImplCopyWith(
    _$PropertySearchStateImpl value,
    $Res Function(_$PropertySearchStateImpl) then,
  ) = __$$PropertySearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PropertySearchStatus status,
    List<Property> properties,
    Failure? failure,
    SearchMetadata? metadata,
  });

  @override
  $SearchMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$PropertySearchStateImplCopyWithImpl<$Res>
    extends _$PropertySearchStateCopyWithImpl<$Res, _$PropertySearchStateImpl>
    implements _$$PropertySearchStateImplCopyWith<$Res> {
  __$$PropertySearchStateImplCopyWithImpl(
    _$PropertySearchStateImpl _value,
    $Res Function(_$PropertySearchStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertySearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? properties = null,
    Object? failure = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$PropertySearchStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as PropertySearchStatus,
        properties: null == properties
            ? _value._properties
            : properties // ignore: cast_nullable_to_non_nullable
                  as List<Property>,
        failure: freezed == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as Failure?,
        metadata: freezed == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as SearchMetadata?,
      ),
    );
  }
}

/// @nodoc

class _$PropertySearchStateImpl extends _PropertySearchState {
  const _$PropertySearchStateImpl({
    this.status = PropertySearchStatus.initial,
    final List<Property> properties = const <Property>[],
    this.failure,
    this.metadata,
  }) : _properties = properties,
       super._();

  @override
  @JsonKey()
  final PropertySearchStatus status;
  final List<Property> _properties;
  @override
  @JsonKey()
  List<Property> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  final Failure? failure;

  /// Metadata emitted by the streaming search (e.g. search id, estimated
  /// total). Null until the first metadata event of a search arrives.
  @override
  final SearchMetadata? metadata;

  @override
  String toString() {
    return 'PropertySearchState(status: $status, properties: $properties, failure: $failure, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertySearchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._properties,
              _properties,
            ) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_properties),
    failure,
    metadata,
  );

  /// Create a copy of PropertySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertySearchStateImplCopyWith<_$PropertySearchStateImpl> get copyWith =>
      __$$PropertySearchStateImplCopyWithImpl<_$PropertySearchStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PropertySearchState extends PropertySearchState {
  const factory _PropertySearchState({
    final PropertySearchStatus status,
    final List<Property> properties,
    final Failure? failure,
    final SearchMetadata? metadata,
  }) = _$PropertySearchStateImpl;
  const _PropertySearchState._() : super._();

  @override
  PropertySearchStatus get status;
  @override
  List<Property> get properties;
  @override
  Failure? get failure;

  /// Metadata emitted by the streaming search (e.g. search id, estimated
  /// total). Null until the first metadata event of a search arrives.
  @override
  SearchMetadata? get metadata;

  /// Create a copy of PropertySearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertySearchStateImplCopyWith<_$PropertySearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
