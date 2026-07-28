// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_stream_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PropertyImageDto _$PropertyImageDtoFromJson(Map<String, dynamic> json) {
  return _PropertyImageDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyImageDto {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PropertyImageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyImageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyImageDtoCopyWith<PropertyImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyImageDtoCopyWith<$Res> {
  factory $PropertyImageDtoCopyWith(
    PropertyImageDto value,
    $Res Function(PropertyImageDto) then,
  ) = _$PropertyImageDtoCopyWithImpl<$Res, PropertyImageDto>;
  @useResult
  $Res call({int id, String url});
}

/// @nodoc
class _$PropertyImageDtoCopyWithImpl<$Res, $Val extends PropertyImageDto>
    implements $PropertyImageDtoCopyWith<$Res> {
  _$PropertyImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyImageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PropertyImageDtoImplCopyWith<$Res>
    implements $PropertyImageDtoCopyWith<$Res> {
  factory _$$PropertyImageDtoImplCopyWith(
    _$PropertyImageDtoImpl value,
    $Res Function(_$PropertyImageDtoImpl) then,
  ) = __$$PropertyImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url});
}

/// @nodoc
class __$$PropertyImageDtoImplCopyWithImpl<$Res>
    extends _$PropertyImageDtoCopyWithImpl<$Res, _$PropertyImageDtoImpl>
    implements _$$PropertyImageDtoImplCopyWith<$Res> {
  __$$PropertyImageDtoImplCopyWithImpl(
    _$PropertyImageDtoImpl _value,
    $Res Function(_$PropertyImageDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyImageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? url = null}) {
    return _then(
      _$PropertyImageDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyImageDtoImpl implements _PropertyImageDto {
  const _$PropertyImageDtoImpl({required this.id, required this.url});

  factory _$PropertyImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyImageDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String url;

  @override
  String toString() {
    return 'PropertyImageDto(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyImageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  /// Create a copy of PropertyImageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyImageDtoImplCopyWith<_$PropertyImageDtoImpl> get copyWith =>
      __$$PropertyImageDtoImplCopyWithImpl<_$PropertyImageDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyImageDtoImplToJson(this);
  }
}

abstract class _PropertyImageDto implements PropertyImageDto {
  const factory _PropertyImageDto({
    required final int id,
    required final String url,
  }) = _$PropertyImageDtoImpl;

  factory _PropertyImageDto.fromJson(Map<String, dynamic> json) =
      _$PropertyImageDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get url;

  /// Create a copy of PropertyImageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyImageDtoImplCopyWith<_$PropertyImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeaturedBadgeDto _$FeaturedBadgeDtoFromJson(Map<String, dynamic> json) {
  return _FeaturedBadgeDto.fromJson(json);
}

/// @nodoc
mixin _$FeaturedBadgeDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this FeaturedBadgeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeaturedBadgeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeaturedBadgeDtoCopyWith<FeaturedBadgeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedBadgeDtoCopyWith<$Res> {
  factory $FeaturedBadgeDtoCopyWith(
    FeaturedBadgeDto value,
    $Res Function(FeaturedBadgeDto) then,
  ) = _$FeaturedBadgeDtoCopyWithImpl<$Res, FeaturedBadgeDto>;
  @useResult
  $Res call({int? id, String? name, String? slug, String? icon});
}

/// @nodoc
class _$FeaturedBadgeDtoCopyWithImpl<$Res, $Val extends FeaturedBadgeDto>
    implements $FeaturedBadgeDtoCopyWith<$Res> {
  _$FeaturedBadgeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeaturedBadgeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? icon = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            icon: freezed == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeaturedBadgeDtoImplCopyWith<$Res>
    implements $FeaturedBadgeDtoCopyWith<$Res> {
  factory _$$FeaturedBadgeDtoImplCopyWith(
    _$FeaturedBadgeDtoImpl value,
    $Res Function(_$FeaturedBadgeDtoImpl) then,
  ) = __$$FeaturedBadgeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? slug, String? icon});
}

/// @nodoc
class __$$FeaturedBadgeDtoImplCopyWithImpl<$Res>
    extends _$FeaturedBadgeDtoCopyWithImpl<$Res, _$FeaturedBadgeDtoImpl>
    implements _$$FeaturedBadgeDtoImplCopyWith<$Res> {
  __$$FeaturedBadgeDtoImplCopyWithImpl(
    _$FeaturedBadgeDtoImpl _value,
    $Res Function(_$FeaturedBadgeDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeaturedBadgeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? icon = freezed,
  }) {
    return _then(
      _$FeaturedBadgeDtoImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        icon: freezed == icon
            ? _value.icon
            : icon // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedBadgeDtoImpl implements _FeaturedBadgeDto {
  const _$FeaturedBadgeDtoImpl({this.id, this.name, this.slug, this.icon});

  factory _$FeaturedBadgeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedBadgeDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? icon;

  @override
  String toString() {
    return 'FeaturedBadgeDto(id: $id, name: $name, slug: $slug, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedBadgeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, icon);

  /// Create a copy of FeaturedBadgeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedBadgeDtoImplCopyWith<_$FeaturedBadgeDtoImpl> get copyWith =>
      __$$FeaturedBadgeDtoImplCopyWithImpl<_$FeaturedBadgeDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedBadgeDtoImplToJson(this);
  }
}

abstract class _FeaturedBadgeDto implements FeaturedBadgeDto {
  const factory _FeaturedBadgeDto({
    final int? id,
    final String? name,
    final String? slug,
    final String? icon,
  }) = _$FeaturedBadgeDtoImpl;

  factory _FeaturedBadgeDto.fromJson(Map<String, dynamic> json) =
      _$FeaturedBadgeDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get icon;

  /// Create a copy of FeaturedBadgeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedBadgeDtoImplCopyWith<_$FeaturedBadgeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyStreamItemDto _$PropertyStreamItemDtoFromJson(
  Map<String, dynamic> json,
) {
  return _PropertyStreamItemDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyStreamItemDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_price')
  num? get offerPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_avg')
  double? get reviewsAvg => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int get reviewsCount => throw _privateConstructorUsedError;
  List<PropertyImageDto> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hotel')
  bool get isHotel => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured_badge')
  FeaturedBadgeDto? get featuredBadge => throw _privateConstructorUsedError;
  int? get bedroom => throw _privateConstructorUsedError;
  int? get beds => throw _privateConstructorUsedError;
  int? get bathroom => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_guest')
  int? get maxGuest => throw _privateConstructorUsedError;

  /// Serializes this PropertyStreamItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyStreamItemDtoCopyWith<PropertyStreamItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStreamItemDtoCopyWith<$Res> {
  factory $PropertyStreamItemDtoCopyWith(
    PropertyStreamItemDto value,
    $Res Function(PropertyStreamItemDto) then,
  ) = _$PropertyStreamItemDtoCopyWithImpl<$Res, PropertyStreamItemDto>;
  @useResult
  $Res call({
    int id,
    String title,
    String address,
    num price,
    @JsonKey(name: 'offer_price') num? offerPrice,
    @JsonKey(name: 'reviews_avg') double? reviewsAvg,
    @JsonKey(name: 'reviews_count') int reviewsCount,
    List<PropertyImageDto> images,
    @JsonKey(name: 'is_hotel') bool isHotel,
    @JsonKey(name: 'featured_badge') FeaturedBadgeDto? featuredBadge,
    int? bedroom,
    int? beds,
    int? bathroom,
    @JsonKey(name: 'max_guest') int? maxGuest,
  });

  $FeaturedBadgeDtoCopyWith<$Res>? get featuredBadge;
}

/// @nodoc
class _$PropertyStreamItemDtoCopyWithImpl<
  $Res,
  $Val extends PropertyStreamItemDto
>
    implements $PropertyStreamItemDtoCopyWith<$Res> {
  _$PropertyStreamItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyStreamItemDto
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
    Object? images = null,
    Object? isHotel = null,
    Object? featuredBadge = freezed,
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
                      as int,
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
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<PropertyImageDto>,
            isHotel: null == isHotel
                ? _value.isHotel
                : isHotel // ignore: cast_nullable_to_non_nullable
                      as bool,
            featuredBadge: freezed == featuredBadge
                ? _value.featuredBadge
                : featuredBadge // ignore: cast_nullable_to_non_nullable
                      as FeaturedBadgeDto?,
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

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeaturedBadgeDtoCopyWith<$Res>? get featuredBadge {
    if (_value.featuredBadge == null) {
      return null;
    }

    return $FeaturedBadgeDtoCopyWith<$Res>(_value.featuredBadge!, (value) {
      return _then(_value.copyWith(featuredBadge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyStreamItemDtoImplCopyWith<$Res>
    implements $PropertyStreamItemDtoCopyWith<$Res> {
  factory _$$PropertyStreamItemDtoImplCopyWith(
    _$PropertyStreamItemDtoImpl value,
    $Res Function(_$PropertyStreamItemDtoImpl) then,
  ) = __$$PropertyStreamItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String address,
    num price,
    @JsonKey(name: 'offer_price') num? offerPrice,
    @JsonKey(name: 'reviews_avg') double? reviewsAvg,
    @JsonKey(name: 'reviews_count') int reviewsCount,
    List<PropertyImageDto> images,
    @JsonKey(name: 'is_hotel') bool isHotel,
    @JsonKey(name: 'featured_badge') FeaturedBadgeDto? featuredBadge,
    int? bedroom,
    int? beds,
    int? bathroom,
    @JsonKey(name: 'max_guest') int? maxGuest,
  });

  @override
  $FeaturedBadgeDtoCopyWith<$Res>? get featuredBadge;
}

/// @nodoc
class __$$PropertyStreamItemDtoImplCopyWithImpl<$Res>
    extends
        _$PropertyStreamItemDtoCopyWithImpl<$Res, _$PropertyStreamItemDtoImpl>
    implements _$$PropertyStreamItemDtoImplCopyWith<$Res> {
  __$$PropertyStreamItemDtoImplCopyWithImpl(
    _$PropertyStreamItemDtoImpl _value,
    $Res Function(_$PropertyStreamItemDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyStreamItemDto
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
    Object? images = null,
    Object? isHotel = null,
    Object? featuredBadge = freezed,
    Object? bedroom = freezed,
    Object? beds = freezed,
    Object? bathroom = freezed,
    Object? maxGuest = freezed,
  }) {
    return _then(
      _$PropertyStreamItemDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
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
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<PropertyImageDto>,
        isHotel: null == isHotel
            ? _value.isHotel
            : isHotel // ignore: cast_nullable_to_non_nullable
                  as bool,
        featuredBadge: freezed == featuredBadge
            ? _value.featuredBadge
            : featuredBadge // ignore: cast_nullable_to_non_nullable
                  as FeaturedBadgeDto?,
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
@JsonSerializable()
class _$PropertyStreamItemDtoImpl implements _PropertyStreamItemDto {
  const _$PropertyStreamItemDtoImpl({
    required this.id,
    required this.title,
    required this.address,
    required this.price,
    @JsonKey(name: 'offer_price') this.offerPrice,
    @JsonKey(name: 'reviews_avg') this.reviewsAvg,
    @JsonKey(name: 'reviews_count') this.reviewsCount = 0,
    final List<PropertyImageDto> images = const <PropertyImageDto>[],
    @JsonKey(name: 'is_hotel') this.isHotel = false,
    @JsonKey(name: 'featured_badge') this.featuredBadge,
    this.bedroom,
    this.beds,
    this.bathroom,
    @JsonKey(name: 'max_guest') this.maxGuest,
  }) : _images = images;

  factory _$PropertyStreamItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyStreamItemDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String address;
  @override
  final num price;
  @override
  @JsonKey(name: 'offer_price')
  final num? offerPrice;
  @override
  @JsonKey(name: 'reviews_avg')
  final double? reviewsAvg;
  @override
  @JsonKey(name: 'reviews_count')
  final int reviewsCount;
  final List<PropertyImageDto> _images;
  @override
  @JsonKey()
  List<PropertyImageDto> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'is_hotel')
  final bool isHotel;
  @override
  @JsonKey(name: 'featured_badge')
  final FeaturedBadgeDto? featuredBadge;
  @override
  final int? bedroom;
  @override
  final int? beds;
  @override
  final int? bathroom;
  @override
  @JsonKey(name: 'max_guest')
  final int? maxGuest;

  @override
  String toString() {
    return 'PropertyStreamItemDto(id: $id, title: $title, address: $address, price: $price, offerPrice: $offerPrice, reviewsAvg: $reviewsAvg, reviewsCount: $reviewsCount, images: $images, isHotel: $isHotel, featuredBadge: $featuredBadge, bedroom: $bedroom, beds: $beds, bathroom: $bathroom, maxGuest: $maxGuest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStreamItemDtoImpl &&
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
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isHotel, isHotel) || other.isHotel == isHotel) &&
            (identical(other.featuredBadge, featuredBadge) ||
                other.featuredBadge == featuredBadge) &&
            (identical(other.bedroom, bedroom) || other.bedroom == bedroom) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.bathroom, bathroom) ||
                other.bathroom == bathroom) &&
            (identical(other.maxGuest, maxGuest) ||
                other.maxGuest == maxGuest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    const DeepCollectionEquality().hash(_images),
    isHotel,
    featuredBadge,
    bedroom,
    beds,
    bathroom,
    maxGuest,
  );

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStreamItemDtoImplCopyWith<_$PropertyStreamItemDtoImpl>
  get copyWith =>
      __$$PropertyStreamItemDtoImplCopyWithImpl<_$PropertyStreamItemDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStreamItemDtoImplToJson(this);
  }
}

abstract class _PropertyStreamItemDto implements PropertyStreamItemDto {
  const factory _PropertyStreamItemDto({
    required final int id,
    required final String title,
    required final String address,
    required final num price,
    @JsonKey(name: 'offer_price') final num? offerPrice,
    @JsonKey(name: 'reviews_avg') final double? reviewsAvg,
    @JsonKey(name: 'reviews_count') final int reviewsCount,
    final List<PropertyImageDto> images,
    @JsonKey(name: 'is_hotel') final bool isHotel,
    @JsonKey(name: 'featured_badge') final FeaturedBadgeDto? featuredBadge,
    final int? bedroom,
    final int? beds,
    final int? bathroom,
    @JsonKey(name: 'max_guest') final int? maxGuest,
  }) = _$PropertyStreamItemDtoImpl;

  factory _PropertyStreamItemDto.fromJson(Map<String, dynamic> json) =
      _$PropertyStreamItemDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get address;
  @override
  num get price;
  @override
  @JsonKey(name: 'offer_price')
  num? get offerPrice;
  @override
  @JsonKey(name: 'reviews_avg')
  double? get reviewsAvg;
  @override
  @JsonKey(name: 'reviews_count')
  int get reviewsCount;
  @override
  List<PropertyImageDto> get images;
  @override
  @JsonKey(name: 'is_hotel')
  bool get isHotel;
  @override
  @JsonKey(name: 'featured_badge')
  FeaturedBadgeDto? get featuredBadge;
  @override
  int? get bedroom;
  @override
  int? get beds;
  @override
  int? get bathroom;
  @override
  @JsonKey(name: 'max_guest')
  int? get maxGuest;

  /// Create a copy of PropertyStreamItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyStreamItemDtoImplCopyWith<_$PropertyStreamItemDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
