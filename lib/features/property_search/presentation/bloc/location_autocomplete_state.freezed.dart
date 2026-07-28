// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_autocomplete_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocationAutocompleteState {
  LocationAutocompleteStatus get status => throw _privateConstructorUsedError;
  List<SelectedLocation> get suggestions => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  /// Create a copy of LocationAutocompleteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationAutocompleteStateCopyWith<LocationAutocompleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAutocompleteStateCopyWith<$Res> {
  factory $LocationAutocompleteStateCopyWith(
    LocationAutocompleteState value,
    $Res Function(LocationAutocompleteState) then,
  ) = _$LocationAutocompleteStateCopyWithImpl<$Res, LocationAutocompleteState>;
  @useResult
  $Res call({
    LocationAutocompleteStatus status,
    List<SelectedLocation> suggestions,
    Failure? failure,
  });
}

/// @nodoc
class _$LocationAutocompleteStateCopyWithImpl<
  $Res,
  $Val extends LocationAutocompleteState
>
    implements $LocationAutocompleteStateCopyWith<$Res> {
  _$LocationAutocompleteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationAutocompleteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? suggestions = null,
    Object? failure = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as LocationAutocompleteStatus,
            suggestions: null == suggestions
                ? _value.suggestions
                : suggestions // ignore: cast_nullable_to_non_nullable
                      as List<SelectedLocation>,
            failure: freezed == failure
                ? _value.failure
                : failure // ignore: cast_nullable_to_non_nullable
                      as Failure?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationAutocompleteStateImplCopyWith<$Res>
    implements $LocationAutocompleteStateCopyWith<$Res> {
  factory _$$LocationAutocompleteStateImplCopyWith(
    _$LocationAutocompleteStateImpl value,
    $Res Function(_$LocationAutocompleteStateImpl) then,
  ) = __$$LocationAutocompleteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocationAutocompleteStatus status,
    List<SelectedLocation> suggestions,
    Failure? failure,
  });
}

/// @nodoc
class __$$LocationAutocompleteStateImplCopyWithImpl<$Res>
    extends
        _$LocationAutocompleteStateCopyWithImpl<
          $Res,
          _$LocationAutocompleteStateImpl
        >
    implements _$$LocationAutocompleteStateImplCopyWith<$Res> {
  __$$LocationAutocompleteStateImplCopyWithImpl(
    _$LocationAutocompleteStateImpl _value,
    $Res Function(_$LocationAutocompleteStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationAutocompleteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? suggestions = null,
    Object? failure = freezed,
  }) {
    return _then(
      _$LocationAutocompleteStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as LocationAutocompleteStatus,
        suggestions: null == suggestions
            ? _value._suggestions
            : suggestions // ignore: cast_nullable_to_non_nullable
                  as List<SelectedLocation>,
        failure: freezed == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as Failure?,
      ),
    );
  }
}

/// @nodoc

class _$LocationAutocompleteStateImpl extends _LocationAutocompleteState {
  const _$LocationAutocompleteStateImpl({
    this.status = LocationAutocompleteStatus.initial,
    final List<SelectedLocation> suggestions = const <SelectedLocation>[],
    this.failure,
  }) : _suggestions = suggestions,
       super._();

  @override
  @JsonKey()
  final LocationAutocompleteStatus status;
  final List<SelectedLocation> _suggestions;
  @override
  @JsonKey()
  List<SelectedLocation> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'LocationAutocompleteState(status: $status, suggestions: $suggestions, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationAutocompleteStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._suggestions,
              _suggestions,
            ) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_suggestions),
    failure,
  );

  /// Create a copy of LocationAutocompleteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationAutocompleteStateImplCopyWith<_$LocationAutocompleteStateImpl>
  get copyWith =>
      __$$LocationAutocompleteStateImplCopyWithImpl<
        _$LocationAutocompleteStateImpl
      >(this, _$identity);
}

abstract class _LocationAutocompleteState extends LocationAutocompleteState {
  const factory _LocationAutocompleteState({
    final LocationAutocompleteStatus status,
    final List<SelectedLocation> suggestions,
    final Failure? failure,
  }) = _$LocationAutocompleteStateImpl;
  const _LocationAutocompleteState._() : super._();

  @override
  LocationAutocompleteStatus get status;
  @override
  List<SelectedLocation> get suggestions;
  @override
  Failure? get failure;

  /// Create a copy of LocationAutocompleteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationAutocompleteStateImplCopyWith<_$LocationAutocompleteStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
