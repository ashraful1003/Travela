// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_criteria.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SearchCriteria {
  /// Location picked from autocomplete. Carries id/lat/lng plus the
  /// ranking metadata (within/tier_1/tier_2) the search endpoint expects.
  /// The search API requires either a location id or lat/lng, so this is
  /// mandatory in practice even though it's nullable at the type level.
  SelectedLocation? get location => throw _privateConstructorUsedError;

  /// Optional check-in date.
  DateTime? get checkIn => throw _privateConstructorUsedError;

  /// Optional check-out date.
  DateTime? get checkOut => throw _privateConstructorUsedError;

  /// Optional price constraints.
  PriceRange? get priceRange => throw _privateConstructorUsedError;

  /// Guest composition; defaults to one adult when omitted. This field is
  /// non-nullable to avoid repeated null checks across callers.
  GuestInfo get guestInfo => throw _privateConstructorUsedError;

  /// Free-text query (e.g., "beachfront", "city center").
  String? get query => throw _privateConstructorUsedError;

  /// Pagination: 1-based page number, matching the API.
  int get page => throw _privateConstructorUsedError;

  /// Pagination: items per page (API default 20, max 50).
  int get pageSize => throw _privateConstructorUsedError;

  /// Create a copy of SearchCriteria
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchCriteriaCopyWith<SearchCriteria> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCriteriaCopyWith<$Res> {
  factory $SearchCriteriaCopyWith(
    SearchCriteria value,
    $Res Function(SearchCriteria) then,
  ) = _$SearchCriteriaCopyWithImpl<$Res, SearchCriteria>;
  @useResult
  $Res call({
    SelectedLocation? location,
    DateTime? checkIn,
    DateTime? checkOut,
    PriceRange? priceRange,
    GuestInfo guestInfo,
    String? query,
    int page,
    int pageSize,
  });

  $SelectedLocationCopyWith<$Res>? get location;
  $PriceRangeCopyWith<$Res>? get priceRange;
  $GuestInfoCopyWith<$Res> get guestInfo;
}

/// @nodoc
class _$SearchCriteriaCopyWithImpl<$Res, $Val extends SearchCriteria>
    implements $SearchCriteriaCopyWith<$Res> {
  _$SearchCriteriaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchCriteria
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? priceRange = freezed,
    Object? guestInfo = null,
    Object? query = freezed,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(
      _value.copyWith(
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as SelectedLocation?,
            checkIn: freezed == checkIn
                ? _value.checkIn
                : checkIn // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            checkOut: freezed == checkOut
                ? _value.checkOut
                : checkOut // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            priceRange: freezed == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                      as PriceRange?,
            guestInfo: null == guestInfo
                ? _value.guestInfo
                : guestInfo // ignore: cast_nullable_to_non_nullable
                      as GuestInfo,
            query: freezed == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String?,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            pageSize: null == pageSize
                ? _value.pageSize
                : pageSize // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of SearchCriteria
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $SelectedLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of SearchCriteria
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceRangeCopyWith<$Res>? get priceRange {
    if (_value.priceRange == null) {
      return null;
    }

    return $PriceRangeCopyWith<$Res>(_value.priceRange!, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }

  /// Create a copy of SearchCriteria
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuestInfoCopyWith<$Res> get guestInfo {
    return $GuestInfoCopyWith<$Res>(_value.guestInfo, (value) {
      return _then(_value.copyWith(guestInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchCriteriaImplCopyWith<$Res>
    implements $SearchCriteriaCopyWith<$Res> {
  factory _$$SearchCriteriaImplCopyWith(
    _$SearchCriteriaImpl value,
    $Res Function(_$SearchCriteriaImpl) then,
  ) = __$$SearchCriteriaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SelectedLocation? location,
    DateTime? checkIn,
    DateTime? checkOut,
    PriceRange? priceRange,
    GuestInfo guestInfo,
    String? query,
    int page,
    int pageSize,
  });

  @override
  $SelectedLocationCopyWith<$Res>? get location;
  @override
  $PriceRangeCopyWith<$Res>? get priceRange;
  @override
  $GuestInfoCopyWith<$Res> get guestInfo;
}

/// @nodoc
class __$$SearchCriteriaImplCopyWithImpl<$Res>
    extends _$SearchCriteriaCopyWithImpl<$Res, _$SearchCriteriaImpl>
    implements _$$SearchCriteriaImplCopyWith<$Res> {
  __$$SearchCriteriaImplCopyWithImpl(
    _$SearchCriteriaImpl _value,
    $Res Function(_$SearchCriteriaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchCriteria
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? priceRange = freezed,
    Object? guestInfo = null,
    Object? query = freezed,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(
      _$SearchCriteriaImpl(
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as SelectedLocation?,
        checkIn: freezed == checkIn
            ? _value.checkIn
            : checkIn // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        checkOut: freezed == checkOut
            ? _value.checkOut
            : checkOut // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        priceRange: freezed == priceRange
            ? _value.priceRange
            : priceRange // ignore: cast_nullable_to_non_nullable
                  as PriceRange?,
        guestInfo: null == guestInfo
            ? _value.guestInfo
            : guestInfo // ignore: cast_nullable_to_non_nullable
                  as GuestInfo,
        query: freezed == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String?,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        pageSize: null == pageSize
            ? _value.pageSize
            : pageSize // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SearchCriteriaImpl implements _SearchCriteria {
  const _$SearchCriteriaImpl({
    this.location,
    this.checkIn,
    this.checkOut,
    this.priceRange,
    this.guestInfo = const GuestInfo(),
    this.query,
    this.page = 1,
    this.pageSize = 20,
  });

  /// Location picked from autocomplete. Carries id/lat/lng plus the
  /// ranking metadata (within/tier_1/tier_2) the search endpoint expects.
  /// The search API requires either a location id or lat/lng, so this is
  /// mandatory in practice even though it's nullable at the type level.
  @override
  final SelectedLocation? location;

  /// Optional check-in date.
  @override
  final DateTime? checkIn;

  /// Optional check-out date.
  @override
  final DateTime? checkOut;

  /// Optional price constraints.
  @override
  final PriceRange? priceRange;

  /// Guest composition; defaults to one adult when omitted. This field is
  /// non-nullable to avoid repeated null checks across callers.
  @override
  @JsonKey()
  final GuestInfo guestInfo;

  /// Free-text query (e.g., "beachfront", "city center").
  @override
  final String? query;

  /// Pagination: 1-based page number, matching the API.
  @override
  @JsonKey()
  final int page;

  /// Pagination: items per page (API default 20, max 50).
  @override
  @JsonKey()
  final int pageSize;

  @override
  String toString() {
    return 'SearchCriteria(location: $location, checkIn: $checkIn, checkOut: $checkOut, priceRange: $priceRange, guestInfo: $guestInfo, query: $query, page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCriteriaImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.guestInfo, guestInfo) ||
                other.guestInfo == guestInfo) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    location,
    checkIn,
    checkOut,
    priceRange,
    guestInfo,
    query,
    page,
    pageSize,
  );

  /// Create a copy of SearchCriteria
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCriteriaImplCopyWith<_$SearchCriteriaImpl> get copyWith =>
      __$$SearchCriteriaImplCopyWithImpl<_$SearchCriteriaImpl>(
        this,
        _$identity,
      );
}

abstract class _SearchCriteria implements SearchCriteria {
  const factory _SearchCriteria({
    final SelectedLocation? location,
    final DateTime? checkIn,
    final DateTime? checkOut,
    final PriceRange? priceRange,
    final GuestInfo guestInfo,
    final String? query,
    final int page,
    final int pageSize,
  }) = _$SearchCriteriaImpl;

  /// Location picked from autocomplete. Carries id/lat/lng plus the
  /// ranking metadata (within/tier_1/tier_2) the search endpoint expects.
  /// The search API requires either a location id or lat/lng, so this is
  /// mandatory in practice even though it's nullable at the type level.
  @override
  SelectedLocation? get location;

  /// Optional check-in date.
  @override
  DateTime? get checkIn;

  /// Optional check-out date.
  @override
  DateTime? get checkOut;

  /// Optional price constraints.
  @override
  PriceRange? get priceRange;

  /// Guest composition; defaults to one adult when omitted. This field is
  /// non-nullable to avoid repeated null checks across callers.
  @override
  GuestInfo get guestInfo;

  /// Free-text query (e.g., "beachfront", "city center").
  @override
  String? get query;

  /// Pagination: 1-based page number, matching the API.
  @override
  int get page;

  /// Pagination: items per page (API default 20, max 50).
  @override
  int get pageSize;

  /// Create a copy of SearchCriteria
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCriteriaImplCopyWith<_$SearchCriteriaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
