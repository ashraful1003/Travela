// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PriceRange {
  /// Minimum price inclusive.
  double get min => throw _privateConstructorUsedError;

  /// Maximum price inclusive.
  double get max => throw _privateConstructorUsedError;

  /// ISO 4217 currency code (e.g., "USD", "EUR"). Kept as string to avoid
  /// tying to a monetary library at this layer.
  String get currency => throw _privateConstructorUsedError;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceRangeCopyWith<PriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeCopyWith<$Res> {
  factory $PriceRangeCopyWith(
    PriceRange value,
    $Res Function(PriceRange) then,
  ) = _$PriceRangeCopyWithImpl<$Res, PriceRange>;
  @useResult
  $Res call({double min, double max, String currency});
}

/// @nodoc
class _$PriceRangeCopyWithImpl<$Res, $Val extends PriceRange>
    implements $PriceRangeCopyWith<$Res> {
  _$PriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? min = null, Object? max = null, Object? currency = null}) {
    return _then(
      _value.copyWith(
            min: null == min
                ? _value.min
                : min // ignore: cast_nullable_to_non_nullable
                      as double,
            max: null == max
                ? _value.max
                : max // ignore: cast_nullable_to_non_nullable
                      as double,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PriceRangeImplCopyWith<$Res>
    implements $PriceRangeCopyWith<$Res> {
  factory _$$PriceRangeImplCopyWith(
    _$PriceRangeImpl value,
    $Res Function(_$PriceRangeImpl) then,
  ) = __$$PriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double min, double max, String currency});
}

/// @nodoc
class __$$PriceRangeImplCopyWithImpl<$Res>
    extends _$PriceRangeCopyWithImpl<$Res, _$PriceRangeImpl>
    implements _$$PriceRangeImplCopyWith<$Res> {
  __$$PriceRangeImplCopyWithImpl(
    _$PriceRangeImpl _value,
    $Res Function(_$PriceRangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? min = null, Object? max = null, Object? currency = null}) {
    return _then(
      _$PriceRangeImpl(
        min: null == min
            ? _value.min
            : min // ignore: cast_nullable_to_non_nullable
                  as double,
        max: null == max
            ? _value.max
            : max // ignore: cast_nullable_to_non_nullable
                  as double,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PriceRangeImpl implements _PriceRange {
  const _$PriceRangeImpl({
    required this.min,
    required this.max,
    required this.currency,
  });

  /// Minimum price inclusive.
  @override
  final double min;

  /// Maximum price inclusive.
  @override
  final double max;

  /// ISO 4217 currency code (e.g., "USD", "EUR"). Kept as string to avoid
  /// tying to a monetary library at this layer.
  @override
  final String currency;

  @override
  String toString() {
    return 'PriceRange(min: $min, max: $max, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, min, max, currency);

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      __$$PriceRangeImplCopyWithImpl<_$PriceRangeImpl>(this, _$identity);
}

abstract class _PriceRange implements PriceRange {
  const factory _PriceRange({
    required final double min,
    required final double max,
    required final String currency,
  }) = _$PriceRangeImpl;

  /// Minimum price inclusive.
  @override
  double get min;

  /// Maximum price inclusive.
  @override
  double get max;

  /// ISO 4217 currency code (e.g., "USD", "EUR"). Kept as string to avoid
  /// tying to a monetary library at this layer.
  @override
  String get currency;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
