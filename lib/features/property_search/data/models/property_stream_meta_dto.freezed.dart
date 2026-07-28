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

PropertyStreamPaginationDto _$PropertyStreamPaginationDtoFromJson(
  Map<String, dynamic> json,
) {
  return _PropertyStreamPaginationDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyStreamPaginationDto {
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int? get totalCount => throw _privateConstructorUsedError;
  int? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_page')
  int? get totalPage => throw _privateConstructorUsedError;

  /// Serializes this PropertyStreamPaginationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyStreamPaginationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyStreamPaginationDtoCopyWith<PropertyStreamPaginationDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStreamPaginationDtoCopyWith<$Res> {
  factory $PropertyStreamPaginationDtoCopyWith(
    PropertyStreamPaginationDto value,
    $Res Function(PropertyStreamPaginationDto) then,
  ) =
      _$PropertyStreamPaginationDtoCopyWithImpl<
        $Res,
        PropertyStreamPaginationDto
      >;
  @useResult
  $Res call({
    int? page,
    int? limit,
    @JsonKey(name: 'total_count') int? totalCount,
    int? next,
    @JsonKey(name: 'total_page') int? totalPage,
  });
}

/// @nodoc
class _$PropertyStreamPaginationDtoCopyWithImpl<
  $Res,
  $Val extends PropertyStreamPaginationDto
>
    implements $PropertyStreamPaginationDtoCopyWith<$Res> {
  _$PropertyStreamPaginationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyStreamPaginationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalCount = freezed,
    Object? next = freezed,
    Object? totalPage = freezed,
  }) {
    return _then(
      _value.copyWith(
            page: freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int?,
            limit: freezed == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalCount: freezed == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            next: freezed == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPage: freezed == totalPage
                ? _value.totalPage
                : totalPage // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PropertyStreamPaginationDtoImplCopyWith<$Res>
    implements $PropertyStreamPaginationDtoCopyWith<$Res> {
  factory _$$PropertyStreamPaginationDtoImplCopyWith(
    _$PropertyStreamPaginationDtoImpl value,
    $Res Function(_$PropertyStreamPaginationDtoImpl) then,
  ) = __$$PropertyStreamPaginationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? page,
    int? limit,
    @JsonKey(name: 'total_count') int? totalCount,
    int? next,
    @JsonKey(name: 'total_page') int? totalPage,
  });
}

/// @nodoc
class __$$PropertyStreamPaginationDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamPaginationDtoCopyWithImpl<
          $Res,
          _$PropertyStreamPaginationDtoImpl
        >
    implements _$$PropertyStreamPaginationDtoImplCopyWith<$Res> {
  __$$PropertyStreamPaginationDtoImplCopyWithImpl(
    _$PropertyStreamPaginationDtoImpl _value,
    $Res Function(_$PropertyStreamPaginationDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamPaginationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalCount = freezed,
    Object? next = freezed,
    Object? totalPage = freezed,
  }) {
    return _then(
      _$PropertyStreamPaginationDtoImpl(
        page: freezed == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int?,
        limit: freezed == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalCount: freezed == totalCount
            ? _value.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        next: freezed == next
            ? _value.next
            : next // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPage: freezed == totalPage
            ? _value.totalPage
            : totalPage // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamPaginationDtoImpl
    implements _PropertyStreamPaginationDto {
  const _$PropertyStreamPaginationDtoImpl({
    this.page,
    this.limit,
    @JsonKey(name: 'total_count') this.totalCount,
    this.next,
    @JsonKey(name: 'total_page') this.totalPage,
  });

  factory _$PropertyStreamPaginationDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$PropertyStreamPaginationDtoImplFromJson(json);

  @override
  final int? page;
  @override
  final int? limit;
  @override
  @JsonKey(name: 'total_count')
  final int? totalCount;
  @override
  final int? next;
  @override
  @JsonKey(name: 'total_page')
  final int? totalPage;

  @override
  String toString() {
    return 'PropertyStreamPaginationDto(page: $page, limit: $limit, totalCount: $totalCount, next: $next, totalPage: $totalPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamPaginationDtoImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, limit, totalCount, next, totalPage);

  /// Create a copy of PropertyStreamPaginationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamPaginationDtoImplCopyWith<_$PropertyStreamPaginationDtoImpl>
  get copyWith =>
      __$$PropertyStreamPaginationDtoImplCopyWithImpl<
        _$PropertyStreamPaginationDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamPaginationDtoImplToJson(this);
  }
}

abstract class _PropertyStreamPaginationDto
    implements PropertyStreamPaginationDto {
  const factory _PropertyStreamPaginationDto({
    final int? page,
    final int? limit,
    @JsonKey(name: 'total_count') final int? totalCount,
    final int? next,
    @JsonKey(name: 'total_page') final int? totalPage,
  }) = _$PropertyStreamPaginationDtoImpl;

  factory _PropertyStreamPaginationDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamPaginationDtoImpl.fromJson;

  @override
  int? get page;
  @override
  int? get limit;
  @override
  @JsonKey(name: 'total_count')
  int? get totalCount;
  @override
  int? get next;
  @override
  @JsonKey(name: 'total_page')
  int? get totalPage;

  /// Create a copy of PropertyStreamPaginationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamPaginationDtoImplCopyWith<_$PropertyStreamPaginationDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PropertyStreamMetaDto _$PropertyStreamMetaDtoFromJson(
  Map<String, dynamic> json,
) {
  return _PropertyStreamMetaDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyStreamMetaDto {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  PropertyStreamPaginationDto? get pagination =>
      throw _privateConstructorUsedError;

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
    @JsonKey(name: 'total_count') int totalCount,
    PropertyStreamPaginationDto? pagination,
  });

  $PropertyStreamPaginationDtoCopyWith<$Res>? get pagination;
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
  $Res call({Object? totalCount = null, Object? pagination = freezed}) {
    return _then(
      _value.copyWith(
            totalCount: null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                      as int,
            pagination: freezed == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as PropertyStreamPaginationDto?,
          )
          as $Val,
    );
  }

  /// Create a copy of PropertyStreamMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyStreamPaginationDtoCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PropertyStreamPaginationDtoCopyWith<$Res>(_value.pagination!, (
      value,
    ) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
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
    @JsonKey(name: 'total_count') int totalCount,
    PropertyStreamPaginationDto? pagination,
  });

  @override
  $PropertyStreamPaginationDtoCopyWith<$Res>? get pagination;
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
  $Res call({Object? totalCount = null, Object? pagination = freezed}) {
    return _then(
      _$PropertyStreamMetaDtoImpl(
        totalCount: null == totalCount
            ? _value.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        pagination: freezed == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as PropertyStreamPaginationDto?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStreamMetaDtoImpl implements _PropertyStreamMetaDto {
  const _$PropertyStreamMetaDtoImpl({
    @JsonKey(name: 'total_count') required this.totalCount,
    this.pagination,
  });

  factory _$PropertyStreamMetaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyStreamMetaDtoImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  final PropertyStreamPaginationDto? pagination;

  @override
  String toString() {
    return 'PropertyStreamMetaDto(totalCount: $totalCount, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamMetaDtoImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, pagination);

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
    @JsonKey(name: 'total_count') required final int totalCount,
    final PropertyStreamPaginationDto? pagination,
  }) = _$PropertyStreamMetaDtoImpl;

  factory _PropertyStreamMetaDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamMetaDtoImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  PropertyStreamPaginationDto? get pagination;

  /// Create a copy of PropertyStreamMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamMetaDtoImplCopyWith<_$PropertyStreamMetaDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
