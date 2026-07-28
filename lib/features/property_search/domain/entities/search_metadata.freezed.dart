// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SearchMetadata {
  /// Stable identifier for the search session (if provided by backend).
  String get searchId => throw _privateConstructorUsedError;

  /// Optional estimated total number of results (may be null if unknown).
  int? get estimatedTotal => throw _privateConstructorUsedError;

  /// Time when the metadata/event was issued by the backend.
  DateTime? get timestamp => throw _privateConstructorUsedError;

  /// Create a copy of SearchMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchMetadataCopyWith<SearchMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMetadataCopyWith<$Res> {
  factory $SearchMetadataCopyWith(
    SearchMetadata value,
    $Res Function(SearchMetadata) then,
  ) = _$SearchMetadataCopyWithImpl<$Res, SearchMetadata>;
  @useResult
  $Res call({String searchId, int? estimatedTotal, DateTime? timestamp});
}

/// @nodoc
class _$SearchMetadataCopyWithImpl<$Res, $Val extends SearchMetadata>
    implements $SearchMetadataCopyWith<$Res> {
  _$SearchMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchMetadata
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
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchMetadataImplCopyWith<$Res>
    implements $SearchMetadataCopyWith<$Res> {
  factory _$$SearchMetadataImplCopyWith(
    _$SearchMetadataImpl value,
    $Res Function(_$SearchMetadataImpl) then,
  ) = __$$SearchMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchId, int? estimatedTotal, DateTime? timestamp});
}

/// @nodoc
class __$$SearchMetadataImplCopyWithImpl<$Res>
    extends _$SearchMetadataCopyWithImpl<$Res, _$SearchMetadataImpl>
    implements _$$SearchMetadataImplCopyWith<$Res> {
  __$$SearchMetadataImplCopyWithImpl(
    _$SearchMetadataImpl _value,
    $Res Function(_$SearchMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchId = null,
    Object? estimatedTotal = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(
      _$SearchMetadataImpl(
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
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$SearchMetadataImpl implements _SearchMetadata {
  const _$SearchMetadataImpl({
    required this.searchId,
    this.estimatedTotal,
    this.timestamp,
  });

  /// Stable identifier for the search session (if provided by backend).
  @override
  final String searchId;

  /// Optional estimated total number of results (may be null if unknown).
  @override
  final int? estimatedTotal;

  /// Time when the metadata/event was issued by the backend.
  @override
  final DateTime? timestamp;

  @override
  String toString() {
    return 'SearchMetadata(searchId: $searchId, estimatedTotal: $estimatedTotal, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMetadataImpl &&
            (identical(other.searchId, searchId) ||
                other.searchId == searchId) &&
            (identical(other.estimatedTotal, estimatedTotal) ||
                other.estimatedTotal == estimatedTotal) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchId, estimatedTotal, timestamp);

  /// Create a copy of SearchMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMetadataImplCopyWith<_$SearchMetadataImpl> get copyWith =>
      __$$SearchMetadataImplCopyWithImpl<_$SearchMetadataImpl>(
        this,
        _$identity,
      );
}

abstract class _SearchMetadata implements SearchMetadata {
  const factory _SearchMetadata({
    required final String searchId,
    final int? estimatedTotal,
    final DateTime? timestamp,
  }) = _$SearchMetadataImpl;

  /// Stable identifier for the search session (if provided by backend).
  @override
  String get searchId;

  /// Optional estimated total number of results (may be null if unknown).
  @override
  int? get estimatedTotal;

  /// Time when the metadata/event was issued by the backend.
  @override
  DateTime? get timestamp;

  /// Create a copy of SearchMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchMetadataImplCopyWith<_$SearchMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
