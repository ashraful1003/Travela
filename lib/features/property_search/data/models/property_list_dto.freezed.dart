// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PropertyListDto _$PropertyListDtoFromJson(Map<String, dynamic> json) {
  return _PropertyListDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyListDto {
  List<PropertyDto> get items => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;

  /// Serializes this PropertyListDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyListDtoCopyWith<PropertyListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyListDtoCopyWith<$Res> {
  factory $PropertyListDtoCopyWith(
    PropertyListDto value,
    $Res Function(PropertyListDto) then,
  ) = _$PropertyListDtoCopyWithImpl<$Res, PropertyListDto>;
  @useResult
  $Res call({List<PropertyDto> items, int? total, int? page, int? pageSize});
}

/// @nodoc
class _$PropertyListDtoCopyWithImpl<$Res, $Val extends PropertyListDto>
    implements $PropertyListDtoCopyWith<$Res> {
  _$PropertyListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<PropertyDto>,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int?,
            page: freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int?,
            pageSize: freezed == pageSize
                ? _value.pageSize
                : pageSize // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PropertyListDtoImplCopyWith<$Res>
    implements $PropertyListDtoCopyWith<$Res> {
  factory _$$PropertyListDtoImplCopyWith(
    _$PropertyListDtoImpl value,
    $Res Function(_$PropertyListDtoImpl) then,
  ) = __$$PropertyListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PropertyDto> items, int? total, int? page, int? pageSize});
}

/// @nodoc
class __$$PropertyListDtoImplCopyWithImpl<$Res>
    extends _$PropertyListDtoCopyWithImpl<$Res, _$PropertyListDtoImpl>
    implements _$$PropertyListDtoImplCopyWith<$Res> {
  __$$PropertyListDtoImplCopyWithImpl(
    _$PropertyListDtoImpl _value,
    $Res Function(_$PropertyListDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(
      _$PropertyListDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<PropertyDto>,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int?,
        page: freezed == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int?,
        pageSize: freezed == pageSize
            ? _value.pageSize
            : pageSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyListDtoImpl implements _PropertyListDto {
  const _$PropertyListDtoImpl({
    final List<PropertyDto> items = const <PropertyDto>[],
    this.total,
    this.page,
    this.pageSize,
  }) : _items = items;

  factory _$PropertyListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyListDtoImplFromJson(json);

  final List<PropertyDto> _items;
  @override
  @JsonKey()
  List<PropertyDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int? total;
  @override
  final int? page;
  @override
  final int? pageSize;

  @override
  String toString() {
    return 'PropertyListDto(items: $items, total: $total, page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyListDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    total,
    page,
    pageSize,
  );

  /// Create a copy of PropertyListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyListDtoImplCopyWith<_$PropertyListDtoImpl> get copyWith =>
      __$$PropertyListDtoImplCopyWithImpl<_$PropertyListDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyListDtoImplToJson(this);
  }
}

abstract class _PropertyListDto implements PropertyListDto {
  const factory _PropertyListDto({
    final List<PropertyDto> items,
    final int? total,
    final int? page,
    final int? pageSize,
  }) = _$PropertyListDtoImpl;

  factory _PropertyListDto.fromJson(Map<String, dynamic> json) =
      _$PropertyListDtoImpl.fromJson;

  @override
  List<PropertyDto> get items;
  @override
  int? get total;
  @override
  int? get page;
  @override
  int? get pageSize;

  /// Create a copy of PropertyListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyListDtoImplCopyWith<_$PropertyListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
