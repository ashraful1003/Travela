// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_autocomplete_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocationAutocompleteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(String query) searchRequested,
    required TResult Function(SelectedLocation location) locationSelected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(String query)? searchRequested,
    TResult? Function(SelectedLocation location)? locationSelected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(String query)? searchRequested,
    TResult Function(SelectedLocation location)? locationSelected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryChanged value) queryChanged,
    required TResult Function(_SearchRequested value) searchRequested,
    required TResult Function(_LocationSelected value) locationSelected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryChanged value)? queryChanged,
    TResult? Function(_SearchRequested value)? searchRequested,
    TResult? Function(_LocationSelected value)? locationSelected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryChanged value)? queryChanged,
    TResult Function(_SearchRequested value)? searchRequested,
    TResult Function(_LocationSelected value)? locationSelected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAutocompleteEventCopyWith<$Res> {
  factory $LocationAutocompleteEventCopyWith(
    LocationAutocompleteEvent value,
    $Res Function(LocationAutocompleteEvent) then,
  ) = _$LocationAutocompleteEventCopyWithImpl<$Res, LocationAutocompleteEvent>;
}

/// @nodoc
class _$LocationAutocompleteEventCopyWithImpl<
  $Res,
  $Val extends LocationAutocompleteEvent
>
    implements $LocationAutocompleteEventCopyWith<$Res> {
  _$LocationAutocompleteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$QueryChangedImplCopyWith<$Res> {
  factory _$$QueryChangedImplCopyWith(
    _$QueryChangedImpl value,
    $Res Function(_$QueryChangedImpl) then,
  ) = __$$QueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$QueryChangedImplCopyWithImpl<$Res>
    extends _$LocationAutocompleteEventCopyWithImpl<$Res, _$QueryChangedImpl>
    implements _$$QueryChangedImplCopyWith<$Res> {
  __$$QueryChangedImplCopyWithImpl(
    _$QueryChangedImpl _value,
    $Res Function(_$QueryChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$QueryChangedImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$QueryChangedImpl implements _QueryChanged {
  const _$QueryChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'LocationAutocompleteEvent.queryChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryChangedImplCopyWith<_$QueryChangedImpl> get copyWith =>
      __$$QueryChangedImplCopyWithImpl<_$QueryChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(String query) searchRequested,
    required TResult Function(SelectedLocation location) locationSelected,
  }) {
    return queryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(String query)? searchRequested,
    TResult? Function(SelectedLocation location)? locationSelected,
  }) {
    return queryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(String query)? searchRequested,
    TResult Function(SelectedLocation location)? locationSelected,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryChanged value) queryChanged,
    required TResult Function(_SearchRequested value) searchRequested,
    required TResult Function(_LocationSelected value) locationSelected,
  }) {
    return queryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryChanged value)? queryChanged,
    TResult? Function(_SearchRequested value)? searchRequested,
    TResult? Function(_LocationSelected value)? locationSelected,
  }) {
    return queryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryChanged value)? queryChanged,
    TResult Function(_SearchRequested value)? searchRequested,
    TResult Function(_LocationSelected value)? locationSelected,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(this);
    }
    return orElse();
  }
}

abstract class _QueryChanged implements LocationAutocompleteEvent {
  const factory _QueryChanged(final String query) = _$QueryChangedImpl;

  String get query;

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryChangedImplCopyWith<_$QueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchRequestedImplCopyWith<$Res> {
  factory _$$SearchRequestedImplCopyWith(
    _$SearchRequestedImpl value,
    $Res Function(_$SearchRequestedImpl) then,
  ) = __$$SearchRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchRequestedImplCopyWithImpl<$Res>
    extends _$LocationAutocompleteEventCopyWithImpl<$Res, _$SearchRequestedImpl>
    implements _$$SearchRequestedImplCopyWith<$Res> {
  __$$SearchRequestedImplCopyWithImpl(
    _$SearchRequestedImpl _value,
    $Res Function(_$SearchRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchRequestedImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchRequestedImpl implements _SearchRequested {
  const _$SearchRequestedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'LocationAutocompleteEvent.searchRequested(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRequestedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRequestedImplCopyWith<_$SearchRequestedImpl> get copyWith =>
      __$$SearchRequestedImplCopyWithImpl<_$SearchRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(String query) searchRequested,
    required TResult Function(SelectedLocation location) locationSelected,
  }) {
    return searchRequested(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(String query)? searchRequested,
    TResult? Function(SelectedLocation location)? locationSelected,
  }) {
    return searchRequested?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(String query)? searchRequested,
    TResult Function(SelectedLocation location)? locationSelected,
    required TResult orElse(),
  }) {
    if (searchRequested != null) {
      return searchRequested(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryChanged value) queryChanged,
    required TResult Function(_SearchRequested value) searchRequested,
    required TResult Function(_LocationSelected value) locationSelected,
  }) {
    return searchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryChanged value)? queryChanged,
    TResult? Function(_SearchRequested value)? searchRequested,
    TResult? Function(_LocationSelected value)? locationSelected,
  }) {
    return searchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryChanged value)? queryChanged,
    TResult Function(_SearchRequested value)? searchRequested,
    TResult Function(_LocationSelected value)? locationSelected,
    required TResult orElse(),
  }) {
    if (searchRequested != null) {
      return searchRequested(this);
    }
    return orElse();
  }
}

abstract class _SearchRequested implements LocationAutocompleteEvent {
  const factory _SearchRequested(final String query) = _$SearchRequestedImpl;

  String get query;

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchRequestedImplCopyWith<_$SearchRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationSelectedImplCopyWith<$Res> {
  factory _$$LocationSelectedImplCopyWith(
    _$LocationSelectedImpl value,
    $Res Function(_$LocationSelectedImpl) then,
  ) = __$$LocationSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectedLocation location});

  $SelectedLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$LocationSelectedImplCopyWithImpl<$Res>
    extends
        _$LocationAutocompleteEventCopyWithImpl<$Res, _$LocationSelectedImpl>
    implements _$$LocationSelectedImplCopyWith<$Res> {
  __$$LocationSelectedImplCopyWithImpl(
    _$LocationSelectedImpl _value,
    $Res Function(_$LocationSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? location = null}) {
    return _then(
      _$LocationSelectedImpl(
        null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as SelectedLocation,
      ),
    );
  }

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedLocationCopyWith<$Res> get location {
    return $SelectedLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$LocationSelectedImpl implements _LocationSelected {
  const _$LocationSelectedImpl(this.location);

  @override
  final SelectedLocation location;

  @override
  String toString() {
    return 'LocationAutocompleteEvent.locationSelected(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSelectedImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSelectedImplCopyWith<_$LocationSelectedImpl> get copyWith =>
      __$$LocationSelectedImplCopyWithImpl<_$LocationSelectedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(String query) searchRequested,
    required TResult Function(SelectedLocation location) locationSelected,
  }) {
    return locationSelected(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(String query)? searchRequested,
    TResult? Function(SelectedLocation location)? locationSelected,
  }) {
    return locationSelected?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(String query)? searchRequested,
    TResult Function(SelectedLocation location)? locationSelected,
    required TResult orElse(),
  }) {
    if (locationSelected != null) {
      return locationSelected(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryChanged value) queryChanged,
    required TResult Function(_SearchRequested value) searchRequested,
    required TResult Function(_LocationSelected value) locationSelected,
  }) {
    return locationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryChanged value)? queryChanged,
    TResult? Function(_SearchRequested value)? searchRequested,
    TResult? Function(_LocationSelected value)? locationSelected,
  }) {
    return locationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryChanged value)? queryChanged,
    TResult Function(_SearchRequested value)? searchRequested,
    TResult Function(_LocationSelected value)? locationSelected,
    required TResult orElse(),
  }) {
    if (locationSelected != null) {
      return locationSelected(this);
    }
    return orElse();
  }
}

abstract class _LocationSelected implements LocationAutocompleteEvent {
  const factory _LocationSelected(final SelectedLocation location) =
      _$LocationSelectedImpl;

  SelectedLocation get location;

  /// Create a copy of LocationAutocompleteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationSelectedImplCopyWith<_$LocationSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
