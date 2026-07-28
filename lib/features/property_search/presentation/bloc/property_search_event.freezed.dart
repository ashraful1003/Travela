// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PropertySearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchCriteria criteria) searchSubmitted,
    required TResult Function() retryRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchCriteria criteria)? searchSubmitted,
    TResult? Function()? retryRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchCriteria criteria)? searchSubmitted,
    TResult Function()? retryRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_RetryRequested value) retryRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_RetryRequested value)? retryRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_RetryRequested value)? retryRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertySearchEventCopyWith<$Res> {
  factory $PropertySearchEventCopyWith(
    PropertySearchEvent value,
    $Res Function(PropertySearchEvent) then,
  ) = _$PropertySearchEventCopyWithImpl<$Res, PropertySearchEvent>;
}

/// @nodoc
class _$PropertySearchEventCopyWithImpl<$Res, $Val extends PropertySearchEvent>
    implements $PropertySearchEventCopyWith<$Res> {
  _$PropertySearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertySearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchSubmittedImplCopyWith<$Res> {
  factory _$$SearchSubmittedImplCopyWith(
    _$SearchSubmittedImpl value,
    $Res Function(_$SearchSubmittedImpl) then,
  ) = __$$SearchSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchCriteria criteria});

  $SearchCriteriaCopyWith<$Res> get criteria;
}

/// @nodoc
class __$$SearchSubmittedImplCopyWithImpl<$Res>
    extends _$PropertySearchEventCopyWithImpl<$Res, _$SearchSubmittedImpl>
    implements _$$SearchSubmittedImplCopyWith<$Res> {
  __$$SearchSubmittedImplCopyWithImpl(
    _$SearchSubmittedImpl _value,
    $Res Function(_$SearchSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? criteria = null}) {
    return _then(
      _$SearchSubmittedImpl(
        null == criteria
            ? _value.criteria
            : criteria // ignore: cast_nullable_to_non_nullable
                  as SearchCriteria,
      ),
    );
  }

  /// Create a copy of PropertySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCriteriaCopyWith<$Res> get criteria {
    return $SearchCriteriaCopyWith<$Res>(_value.criteria, (value) {
      return _then(_value.copyWith(criteria: value));
    });
  }
}

/// @nodoc

class _$SearchSubmittedImpl implements _SearchSubmitted {
  const _$SearchSubmittedImpl(this.criteria);

  @override
  final SearchCriteria criteria;

  @override
  String toString() {
    return 'PropertySearchEvent.searchSubmitted(criteria: $criteria)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSubmittedImpl &&
            (identical(other.criteria, criteria) ||
                other.criteria == criteria));
  }

  @override
  int get hashCode => Object.hash(runtimeType, criteria);

  /// Create a copy of PropertySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSubmittedImplCopyWith<_$SearchSubmittedImpl> get copyWith =>
      __$$SearchSubmittedImplCopyWithImpl<_$SearchSubmittedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchCriteria criteria) searchSubmitted,
    required TResult Function() retryRequested,
  }) {
    return searchSubmitted(criteria);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchCriteria criteria)? searchSubmitted,
    TResult? Function()? retryRequested,
  }) {
    return searchSubmitted?.call(criteria);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchCriteria criteria)? searchSubmitted,
    TResult Function()? retryRequested,
    required TResult orElse(),
  }) {
    if (searchSubmitted != null) {
      return searchSubmitted(criteria);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_RetryRequested value) retryRequested,
  }) {
    return searchSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_RetryRequested value)? retryRequested,
  }) {
    return searchSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_RetryRequested value)? retryRequested,
    required TResult orElse(),
  }) {
    if (searchSubmitted != null) {
      return searchSubmitted(this);
    }
    return orElse();
  }
}

abstract class _SearchSubmitted implements PropertySearchEvent {
  const factory _SearchSubmitted(final SearchCriteria criteria) =
      _$SearchSubmittedImpl;

  SearchCriteria get criteria;

  /// Create a copy of PropertySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSubmittedImplCopyWith<_$SearchSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetryRequestedImplCopyWith<$Res> {
  factory _$$RetryRequestedImplCopyWith(
    _$RetryRequestedImpl value,
    $Res Function(_$RetryRequestedImpl) then,
  ) = __$$RetryRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryRequestedImplCopyWithImpl<$Res>
    extends _$PropertySearchEventCopyWithImpl<$Res, _$RetryRequestedImpl>
    implements _$$RetryRequestedImplCopyWith<$Res> {
  __$$RetryRequestedImplCopyWithImpl(
    _$RetryRequestedImpl _value,
    $Res Function(_$RetryRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertySearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RetryRequestedImpl implements _RetryRequested {
  const _$RetryRequestedImpl();

  @override
  String toString() {
    return 'PropertySearchEvent.retryRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetryRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchCriteria criteria) searchSubmitted,
    required TResult Function() retryRequested,
  }) {
    return retryRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchCriteria criteria)? searchSubmitted,
    TResult? Function()? retryRequested,
  }) {
    return retryRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchCriteria criteria)? searchSubmitted,
    TResult Function()? retryRequested,
    required TResult orElse(),
  }) {
    if (retryRequested != null) {
      return retryRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_RetryRequested value) retryRequested,
  }) {
    return retryRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_RetryRequested value)? retryRequested,
  }) {
    return retryRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_RetryRequested value)? retryRequested,
    required TResult orElse(),
  }) {
    if (retryRequested != null) {
      return retryRequested(this);
    }
    return orElse();
  }
}

abstract class _RetryRequested implements PropertySearchEvent {
  const factory _RetryRequested() = _$RetryRequestedImpl;
}
