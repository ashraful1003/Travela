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
  /// Total number of results the search matched (shown as "N stays").
  int get totalCount => throw _privateConstructorUsedError;

  /// Current page number, when the backend reports pagination.
  int? get page => throw _privateConstructorUsedError;

  /// Total number of pages available, when the backend reports pagination.
  int? get totalPages => throw _privateConstructorUsedError;

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
  $Res call({int totalCount, int? page, int? totalPages});
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
    Object? totalCount = null,
    Object? page = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalCount: null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                      as int,
            page: freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPages: freezed == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int?,
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
  $Res call({int totalCount, int? page, int? totalPages});
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
    Object? totalCount = null,
    Object? page = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(
      _$SearchMetadataImpl(
        totalCount: null == totalCount
            ? _value.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        page: freezed == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPages: freezed == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$SearchMetadataImpl implements _SearchMetadata {
  const _$SearchMetadataImpl({
    required this.totalCount,
    this.page,
    this.totalPages,
  });

  /// Total number of results the search matched (shown as "N stays").
  @override
  final int totalCount;

  /// Current page number, when the backend reports pagination.
  @override
  final int? page;

  /// Total number of pages available, when the backend reports pagination.
  @override
  final int? totalPages;

  @override
  String toString() {
    return 'SearchMetadata(totalCount: $totalCount, page: $page, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMetadataImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalCount, page, totalPages);

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
    required final int totalCount,
    final int? page,
    final int? totalPages,
  }) = _$SearchMetadataImpl;

  /// Total number of results the search matched (shown as "N stays").
  @override
  int get totalCount;

  /// Current page number, when the backend reports pagination.
  @override
  int? get page;

  /// Total number of pages available, when the backend reports pagination.
  @override
  int? get totalPages;

  /// Create a copy of SearchMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchMetadataImplCopyWith<_$SearchMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
