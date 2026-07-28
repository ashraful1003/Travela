// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SelectedLocation {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String? get within => throw _privateConstructorUsedError;
  String? get tier1 => throw _privateConstructorUsedError;
  String? get tier2 => throw _privateConstructorUsedError;

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedLocationCopyWith<SelectedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedLocationCopyWith<$Res> {
  factory $SelectedLocationCopyWith(
    SelectedLocation value,
    $Res Function(SelectedLocation) then,
  ) = _$SelectedLocationCopyWithImpl<$Res, SelectedLocation>;
  @useResult
  $Res call({
    String id,
    String name,
    double lat,
    double lng,
    String? within,
    String? tier1,
    String? tier2,
  });
}

/// @nodoc
class _$SelectedLocationCopyWithImpl<$Res, $Val extends SelectedLocation>
    implements $SelectedLocationCopyWith<$Res> {
  _$SelectedLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lat = null,
    Object? lng = null,
    Object? within = freezed,
    Object? tier1 = freezed,
    Object? tier2 = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            lat: null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                      as double,
            lng: null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as double,
            within: freezed == within
                ? _value.within
                : within // ignore: cast_nullable_to_non_nullable
                      as String?,
            tier1: freezed == tier1
                ? _value.tier1
                : tier1 // ignore: cast_nullable_to_non_nullable
                      as String?,
            tier2: freezed == tier2
                ? _value.tier2
                : tier2 // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SelectedLocationImplCopyWith<$Res>
    implements $SelectedLocationCopyWith<$Res> {
  factory _$$SelectedLocationImplCopyWith(
    _$SelectedLocationImpl value,
    $Res Function(_$SelectedLocationImpl) then,
  ) = __$$SelectedLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    double lat,
    double lng,
    String? within,
    String? tier1,
    String? tier2,
  });
}

/// @nodoc
class __$$SelectedLocationImplCopyWithImpl<$Res>
    extends _$SelectedLocationCopyWithImpl<$Res, _$SelectedLocationImpl>
    implements _$$SelectedLocationImplCopyWith<$Res> {
  __$$SelectedLocationImplCopyWithImpl(
    _$SelectedLocationImpl _value,
    $Res Function(_$SelectedLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lat = null,
    Object? lng = null,
    Object? within = freezed,
    Object? tier1 = freezed,
    Object? tier2 = freezed,
  }) {
    return _then(
      _$SelectedLocationImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        lat: null == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double,
        lng: null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double,
        within: freezed == within
            ? _value.within
            : within // ignore: cast_nullable_to_non_nullable
                  as String?,
        tier1: freezed == tier1
            ? _value.tier1
            : tier1 // ignore: cast_nullable_to_non_nullable
                  as String?,
        tier2: freezed == tier2
            ? _value.tier2
            : tier2 // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SelectedLocationImpl extends _SelectedLocation {
  const _$SelectedLocationImpl({
    required this.id,
    required this.name,
    required this.lat,
    required this.lng,
    this.within,
    this.tier1,
    this.tier2,
  }) : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final String? within;
  @override
  final String? tier1;
  @override
  final String? tier2;

  @override
  String toString() {
    return 'SelectedLocation(id: $id, name: $name, lat: $lat, lng: $lng, within: $within, tier1: $tier1, tier2: $tier2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedLocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.within, within) || other.within == within) &&
            (identical(other.tier1, tier1) || other.tier1 == tier1) &&
            (identical(other.tier2, tier2) || other.tier2 == tier2));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, lat, lng, within, tier1, tier2);

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedLocationImplCopyWith<_$SelectedLocationImpl> get copyWith =>
      __$$SelectedLocationImplCopyWithImpl<_$SelectedLocationImpl>(
        this,
        _$identity,
      );
}

abstract class _SelectedLocation extends SelectedLocation {
  const factory _SelectedLocation({
    required final String id,
    required final String name,
    required final double lat,
    required final double lng,
    final String? within,
    final String? tier1,
    final String? tier2,
  }) = _$SelectedLocationImpl;
  const _SelectedLocation._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  double get lat;
  @override
  double get lng;
  @override
  String? get within;
  @override
  String? get tier1;
  @override
  String? get tier2;

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedLocationImplCopyWith<_$SelectedLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
