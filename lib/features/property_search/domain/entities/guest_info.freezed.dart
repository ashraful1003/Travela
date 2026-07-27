// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GuestInfo {
  int get adults => throw _privateConstructorUsedError;
  int get children => throw _privateConstructorUsedError;
  int get infants => throw _privateConstructorUsedError;

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuestInfoCopyWith<GuestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestInfoCopyWith<$Res> {
  factory $GuestInfoCopyWith(GuestInfo value, $Res Function(GuestInfo) then) =
      _$GuestInfoCopyWithImpl<$Res, GuestInfo>;
  @useResult
  $Res call({int adults, int children, int infants});
}

/// @nodoc
class _$GuestInfoCopyWithImpl<$Res, $Val extends GuestInfo>
    implements $GuestInfoCopyWith<$Res> {
  _$GuestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adults = null,
    Object? children = null,
    Object? infants = null,
  }) {
    return _then(
      _value.copyWith(
            adults: null == adults
                ? _value.adults
                : adults // ignore: cast_nullable_to_non_nullable
                      as int,
            children: null == children
                ? _value.children
                : children // ignore: cast_nullable_to_non_nullable
                      as int,
            infants: null == infants
                ? _value.infants
                : infants // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GuestInfoImplCopyWith<$Res>
    implements $GuestInfoCopyWith<$Res> {
  factory _$$GuestInfoImplCopyWith(
    _$GuestInfoImpl value,
    $Res Function(_$GuestInfoImpl) then,
  ) = __$$GuestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int adults, int children, int infants});
}

/// @nodoc
class __$$GuestInfoImplCopyWithImpl<$Res>
    extends _$GuestInfoCopyWithImpl<$Res, _$GuestInfoImpl>
    implements _$$GuestInfoImplCopyWith<$Res> {
  __$$GuestInfoImplCopyWithImpl(
    _$GuestInfoImpl _value,
    $Res Function(_$GuestInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adults = null,
    Object? children = null,
    Object? infants = null,
  }) {
    return _then(
      _$GuestInfoImpl(
        adults: null == adults
            ? _value.adults
            : adults // ignore: cast_nullable_to_non_nullable
                  as int,
        children: null == children
            ? _value.children
            : children // ignore: cast_nullable_to_non_nullable
                  as int,
        infants: null == infants
            ? _value.infants
            : infants // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GuestInfoImpl implements _GuestInfo {
  const _$GuestInfoImpl({this.adults = 1, this.children = 0, this.infants = 0});

  @override
  @JsonKey()
  final int adults;
  @override
  @JsonKey()
  final int children;
  @override
  @JsonKey()
  final int infants;

  @override
  String toString() {
    return 'GuestInfo(adults: $adults, children: $children, infants: $infants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestInfoImpl &&
            (identical(other.adults, adults) || other.adults == adults) &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.infants, infants) || other.infants == infants));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adults, children, infants);

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestInfoImplCopyWith<_$GuestInfoImpl> get copyWith =>
      __$$GuestInfoImplCopyWithImpl<_$GuestInfoImpl>(this, _$identity);
}

abstract class _GuestInfo implements GuestInfo {
  const factory _GuestInfo({
    final int adults,
    final int children,
    final int infants,
  }) = _$GuestInfoImpl;

  @override
  int get adults;
  @override
  int get children;
  @override
  int get infants;

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuestInfoImplCopyWith<_$GuestInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
