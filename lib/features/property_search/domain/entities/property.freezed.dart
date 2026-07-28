// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Property {
  /// Unique business identifier for the property.
  String get id => throw _privateConstructorUsedError;

  /// Short human-readable title.
  String get title => throw _privateConstructorUsedError;

  /// Free-text address/location label as returned by the API.
  String get address => throw _privateConstructorUsedError;

  /// Listed price.
  num get price => throw _privateConstructorUsedError;

  /// Discounted price, when the property has an active offer.
  num? get offerPrice => throw _privateConstructorUsedError;

  /// Average review score (0-5), null when the property has no reviews yet.
  double? get reviewsAvg => throw _privateConstructorUsedError;

  /// Number of reviews backing [reviewsAvg].
  int get reviewsCount => throw _privateConstructorUsedError;

  /// Image URLs, in the order returned by the API. May be empty.
  List<String> get imageUrls => throw _privateConstructorUsedError;

  /// Whether this result is a hotel rather than a standalone property.
  bool get isHotel => throw _privateConstructorUsedError;

  /// Human-readable label for a promotional badge (e.g. "Sponsored"),
  /// when the API attaches one.
  String? get featuredBadgeLabel => throw _privateConstructorUsedError;
  int? get bedroom => throw _privateConstructorUsedError;
  int? get beds => throw _privateConstructorUsedError;
  int? get bathroom => throw _privateConstructorUsedError;
  int? get maxGuest => throw _privateConstructorUsedError;

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyCopyWith<Property> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res, Property>;
  @useResult
  $Res call({
    String id,
    String title,
    String address,
    num price,
    num? offerPrice,
    double? reviewsAvg,
    int reviewsCount,
    List<String> imageUrls,
    bool isHotel,
    String? featuredBadgeLabel,
    int? bedroom,
    int? beds,
    int? bathroom,
    int? maxGuest,
  });
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res, $Val extends Property>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? address = null,
    Object? price = null,
    Object? offerPrice = freezed,
    Object? reviewsAvg = freezed,
    Object? reviewsCount = null,
    Object? imageUrls = null,
    Object? isHotel = null,
    Object? featuredBadgeLabel = freezed,
    Object? bedroom = freezed,
    Object? beds = freezed,
    Object? bathroom = freezed,
    Object? maxGuest = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as num,
            offerPrice: freezed == offerPrice
                ? _value.offerPrice
                : offerPrice // ignore: cast_nullable_to_non_nullable
                      as num?,
            reviewsAvg: freezed == reviewsAvg
                ? _value.reviewsAvg
                : reviewsAvg // ignore: cast_nullable_to_non_nullable
                      as double?,
            reviewsCount: null == reviewsCount
                ? _value.reviewsCount
                : reviewsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            imageUrls: null == imageUrls
                ? _value.imageUrls
                : imageUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            isHotel: null == isHotel
                ? _value.isHotel
                : isHotel // ignore: cast_nullable_to_non_nullable
                      as bool,
            featuredBadgeLabel: freezed == featuredBadgeLabel
                ? _value.featuredBadgeLabel
                : featuredBadgeLabel // ignore: cast_nullable_to_non_nullable
                      as String?,
            bedroom: freezed == bedroom
                ? _value.bedroom
                : bedroom // ignore: cast_nullable_to_non_nullable
                      as int?,
            beds: freezed == beds
                ? _value.beds
                : beds // ignore: cast_nullable_to_non_nullable
                      as int?,
            bathroom: freezed == bathroom
                ? _value.bathroom
                : bathroom // ignore: cast_nullable_to_non_nullable
                      as int?,
            maxGuest: freezed == maxGuest
                ? _value.maxGuest
                : maxGuest // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PropertyImplCopyWith<$Res>
    implements $PropertyCopyWith<$Res> {
  factory _$$PropertyImplCopyWith(
    _$PropertyImpl value,
    $Res Function(_$PropertyImpl) then,
  ) = __$$PropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String address,
    num price,
    num? offerPrice,
    double? reviewsAvg,
    int reviewsCount,
    List<String> imageUrls,
    bool isHotel,
    String? featuredBadgeLabel,
    int? bedroom,
    int? beds,
    int? bathroom,
    int? maxGuest,
  });
}

/// @nodoc
class __$$PropertyImplCopyWithImpl<$Res>
    extends _$PropertyCopyWithImpl<$Res, _$PropertyImpl>
    implements _$$PropertyImplCopyWith<$Res> {
  __$$PropertyImplCopyWithImpl(
    _$PropertyImpl _value,
    $Res Function(_$PropertyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? address = null,
    Object? price = null,
    Object? offerPrice = freezed,
    Object? reviewsAvg = freezed,
    Object? reviewsCount = null,
    Object? imageUrls = null,
    Object? isHotel = null,
    Object? featuredBadgeLabel = freezed,
    Object? bedroom = freezed,
    Object? beds = freezed,
    Object? bathroom = freezed,
    Object? maxGuest = freezed,
  }) {
    return _then(
      _$PropertyImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as num,
        offerPrice: freezed == offerPrice
            ? _value.offerPrice
            : offerPrice // ignore: cast_nullable_to_non_nullable
                  as num?,
        reviewsAvg: freezed == reviewsAvg
            ? _value.reviewsAvg
            : reviewsAvg // ignore: cast_nullable_to_non_nullable
                  as double?,
        reviewsCount: null == reviewsCount
            ? _value.reviewsCount
            : reviewsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        imageUrls: null == imageUrls
            ? _value._imageUrls
            : imageUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        isHotel: null == isHotel
            ? _value.isHotel
            : isHotel // ignore: cast_nullable_to_non_nullable
                  as bool,
        featuredBadgeLabel: freezed == featuredBadgeLabel
            ? _value.featuredBadgeLabel
            : featuredBadgeLabel // ignore: cast_nullable_to_non_nullable
                  as String?,
        bedroom: freezed == bedroom
            ? _value.bedroom
            : bedroom // ignore: cast_nullable_to_non_nullable
                  as int?,
        beds: freezed == beds
            ? _value.beds
            : beds // ignore: cast_nullable_to_non_nullable
                  as int?,
        bathroom: freezed == bathroom
            ? _value.bathroom
            : bathroom // ignore: cast_nullable_to_non_nullable
                  as int?,
        maxGuest: freezed == maxGuest
            ? _value.maxGuest
            : maxGuest // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$PropertyImpl implements _Property {
  const _$PropertyImpl({
    required this.id,
    required this.title,
    required this.address,
    required this.price,
    this.offerPrice,
    this.reviewsAvg,
    this.reviewsCount = 0,
    final List<String> imageUrls = const <String>[],
    this.isHotel = false,
    this.featuredBadgeLabel,
    this.bedroom,
    this.beds,
    this.bathroom,
    this.maxGuest,
  }) : _imageUrls = imageUrls;

  /// Unique business identifier for the property.
  @override
  final String id;

  /// Short human-readable title.
  @override
  final String title;

  /// Free-text address/location label as returned by the API.
  @override
  final String address;

  /// Listed price.
  @override
  final num price;

  /// Discounted price, when the property has an active offer.
  @override
  final num? offerPrice;

  /// Average review score (0-5), null when the property has no reviews yet.
  @override
  final double? reviewsAvg;

  /// Number of reviews backing [reviewsAvg].
  @override
  @JsonKey()
  final int reviewsCount;

  /// Image URLs, in the order returned by the API. May be empty.
  final List<String> _imageUrls;

  /// Image URLs, in the order returned by the API. May be empty.
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  /// Whether this result is a hotel rather than a standalone property.
  @override
  @JsonKey()
  final bool isHotel;

  /// Human-readable label for a promotional badge (e.g. "Sponsored"),
  /// when the API attaches one.
  @override
  final String? featuredBadgeLabel;
  @override
  final int? bedroom;
  @override
  final int? beds;
  @override
  final int? bathroom;
  @override
  final int? maxGuest;

  @override
  String toString() {
    return 'Property(id: $id, title: $title, address: $address, price: $price, offerPrice: $offerPrice, reviewsAvg: $reviewsAvg, reviewsCount: $reviewsCount, imageUrls: $imageUrls, isHotel: $isHotel, featuredBadgeLabel: $featuredBadgeLabel, bedroom: $bedroom, beds: $beds, bathroom: $bathroom, maxGuest: $maxGuest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.reviewsAvg, reviewsAvg) ||
                other.reviewsAvg == reviewsAvg) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            const DeepCollectionEquality().equals(
              other._imageUrls,
              _imageUrls,
            ) &&
            (identical(other.isHotel, isHotel) || other.isHotel == isHotel) &&
            (identical(other.featuredBadgeLabel, featuredBadgeLabel) ||
                other.featuredBadgeLabel == featuredBadgeLabel) &&
            (identical(other.bedroom, bedroom) || other.bedroom == bedroom) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.bathroom, bathroom) ||
                other.bathroom == bathroom) &&
            (identical(other.maxGuest, maxGuest) ||
                other.maxGuest == maxGuest));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    address,
    price,
    offerPrice,
    reviewsAvg,
    reviewsCount,
    const DeepCollectionEquality().hash(_imageUrls),
    isHotel,
    featuredBadgeLabel,
    bedroom,
    beds,
    bathroom,
    maxGuest,
  );

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      __$$PropertyImplCopyWithImpl<_$PropertyImpl>(this, _$identity);
}

abstract class _Property implements Property {
  const factory _Property({
    required final String id,
    required final String title,
    required final String address,
    required final num price,
    final num? offerPrice,
    final double? reviewsAvg,
    final int reviewsCount,
    final List<String> imageUrls,
    final bool isHotel,
    final String? featuredBadgeLabel,
    final int? bedroom,
    final int? beds,
    final int? bathroom,
    final int? maxGuest,
  }) = _$PropertyImpl;

  /// Unique business identifier for the property.
  @override
  String get id;

  /// Short human-readable title.
  @override
  String get title;

  /// Free-text address/location label as returned by the API.
  @override
  String get address;

  /// Listed price.
  @override
  num get price;

  /// Discounted price, when the property has an active offer.
  @override
  num? get offerPrice;

  /// Average review score (0-5), null when the property has no reviews yet.
  @override
  double? get reviewsAvg;

  /// Number of reviews backing [reviewsAvg].
  @override
  int get reviewsCount;

  /// Image URLs, in the order returned by the API. May be empty.
  @override
  List<String> get imageUrls;

  /// Whether this result is a hotel rather than a standalone property.
  @override
  bool get isHotel;

  /// Human-readable label for a promotional badge (e.g. "Sponsored"),
  /// when the API attaches one.
  @override
  String? get featuredBadgeLabel;
  @override
  int? get bedroom;
  @override
  int? get beds;
  @override
  int? get bathroom;
  @override
  int? get maxGuest;

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
