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
    required TResult Function(
      String location,
      double minPrice,
      double maxPrice,
      String currency,
      int adults,
      int children,
      int infants,
      DateTime? checkIn,
      DateTime? checkOut,
      String? query,
    )
    searchSubmitted,
    required TResult Function() retryRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String location,
      double minPrice,
      double maxPrice,
      String currency,
      int adults,
      int children,
      int infants,
      DateTime? checkIn,
      DateTime? checkOut,
      String? query,
    )?
    searchSubmitted,
    TResult? Function()? retryRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String location,
      double minPrice,
      double maxPrice,
      String currency,
      int adults,
      int children,
      int infants,
      DateTime? checkIn,
      DateTime? checkOut,
      String? query,
    )?
    searchSubmitted,
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
  $Res call({
    String location,
    double minPrice,
    double maxPrice,
    String currency,
    int adults,
    int children,
    int infants,
    DateTime? checkIn,
    DateTime? checkOut,
    String? query,
  });
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
  $Res call({
    Object? location = null,
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? currency = null,
    Object? adults = null,
    Object? children = null,
    Object? infants = null,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? query = freezed,
  }) {
    return _then(
      _$SearchSubmittedImpl(
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        minPrice: null == minPrice
            ? _value.minPrice
            : minPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        maxPrice: null == maxPrice
            ? _value.maxPrice
            : maxPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
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
        checkIn: freezed == checkIn
            ? _value.checkIn
            : checkIn // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        checkOut: freezed == checkOut
            ? _value.checkOut
            : checkOut // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        query: freezed == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SearchSubmittedImpl implements _SearchSubmitted {
  const _$SearchSubmittedImpl({
    required this.location,
    required this.minPrice,
    required this.maxPrice,
    required this.currency,
    required this.adults,
    required this.children,
    required this.infants,
    this.checkIn,
    this.checkOut,
    this.query,
  });

  @override
  final String location;
  @override
  final double minPrice;
  @override
  final double maxPrice;
  @override
  final String currency;
  @override
  final int adults;
  @override
  final int children;
  @override
  final int infants;
  @override
  final DateTime? checkIn;
  @override
  final DateTime? checkOut;
  @override
  final String? query;

  @override
  String toString() {
    return 'PropertySearchEvent.searchSubmitted(location: $location, minPrice: $minPrice, maxPrice: $maxPrice, currency: $currency, adults: $adults, children: $children, infants: $infants, checkIn: $checkIn, checkOut: $checkOut, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSubmittedImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.adults, adults) || other.adults == adults) &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.infants, infants) || other.infants == infants) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    location,
    minPrice,
    maxPrice,
    currency,
    adults,
    children,
    infants,
    checkIn,
    checkOut,
    query,
  );

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
    required TResult Function(
      String location,
      double minPrice,
      double maxPrice,
      String currency,
      int adults,
      int children,
      int infants,
      DateTime? checkIn,
      DateTime? checkOut,
      String? query,
    )
    searchSubmitted,
    required TResult Function() retryRequested,
  }) {
    return searchSubmitted(
      location,
      minPrice,
      maxPrice,
      currency,
      adults,
      children,
      infants,
      checkIn,
      checkOut,
      query,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String location,
      double minPrice,
      double maxPrice,
      String currency,
      int adults,
      int children,
      int infants,
      DateTime? checkIn,
      DateTime? checkOut,
      String? query,
    )?
    searchSubmitted,
    TResult? Function()? retryRequested,
  }) {
    return searchSubmitted?.call(
      location,
      minPrice,
      maxPrice,
      currency,
      adults,
      children,
      infants,
      checkIn,
      checkOut,
      query,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String location,
      double minPrice,
      double maxPrice,
      String currency,
      int adults,
      int children,
      int infants,
      DateTime? checkIn,
      DateTime? checkOut,
      String? query,
    )?
    searchSubmitted,
    TResult Function()? retryRequested,
    required TResult orElse(),
  }) {
    if (searchSubmitted != null) {
      return searchSubmitted(
        location,
        minPrice,
        maxPrice,
        currency,
        adults,
        children,
        infants,
        checkIn,
        checkOut,
        query,
      );
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
  const factory _SearchSubmitted({
    required final String location,
    required final double minPrice,
    required final double maxPrice,
    required final String currency,
    required final int adults,
    required final int children,
    required final int infants,
    final DateTime? checkIn,
    final DateTime? checkOut,
    final String? query,
  }) = _$SearchSubmittedImpl;

  String get location;
  double get minPrice;
  double get maxPrice;
  String get currency;
  int get adults;
  int get children;
  int get infants;
  DateTime? get checkIn;
  DateTime? get checkOut;
  String? get query;

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
    required TResult Function(
      String location,
      double minPrice,
      double maxPrice,
      String currency,
      int adults,
      int children,
      int infants,
      DateTime? checkIn,
      DateTime? checkOut,
      String? query,
    )
    searchSubmitted,
    required TResult Function() retryRequested,
  }) {
    return retryRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String location,
      double minPrice,
      double maxPrice,
      String currency,
      int adults,
      int children,
      int infants,
      DateTime? checkIn,
      DateTime? checkOut,
      String? query,
    )?
    searchSubmitted,
    TResult? Function()? retryRequested,
  }) {
    return retryRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String location,
      double minPrice,
      double maxPrice,
      String currency,
      int adults,
      int children,
      int infants,
      DateTime? checkIn,
      DateTime? checkOut,
      String? query,
    )?
    searchSubmitted,
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
