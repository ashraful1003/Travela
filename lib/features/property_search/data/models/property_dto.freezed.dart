// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PropertyDto _$PropertyDtoFromJson(Map<String, dynamic> json) {
  return _PropertyDto.fromJson(json);
}

/// @nodoc
mixin _$PropertyDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  LocationDto get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_range')
  PriceRangeDto get priceRange => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_guests')
  int get maxGuests => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get bedrooms => throw _privateConstructorUsedError;
  int? get bathrooms => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_urls')
  List<String> get photoUrls => throw _privateConstructorUsedError;
  List<String> get amenities => throw _privateConstructorUsedError;
  @JsonKey(name: 'instant_book')
  bool get instantBook => throw _privateConstructorUsedError;

  /// Serializes this PropertyDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyDtoCopyWith<PropertyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyDtoCopyWith<$Res> {
  factory $PropertyDtoCopyWith(
    PropertyDto value,
    $Res Function(PropertyDto) then,
  ) = _$PropertyDtoCopyWithImpl<$Res, PropertyDto>;
  @useResult
  $Res call({
    String id,
    String title,
    LocationDto location,
    @JsonKey(name: 'price_range') PriceRangeDto priceRange,
    @JsonKey(name: 'max_guests') int maxGuests,
    String? description,
    int? bedrooms,
    int? bathrooms,
    @JsonKey(name: 'photo_urls') List<String> photoUrls,
    List<String> amenities,
    @JsonKey(name: 'instant_book') bool instantBook,
  });

  $LocationDtoCopyWith<$Res> get location;
  $PriceRangeDtoCopyWith<$Res> get priceRange;
}

/// @nodoc
class _$PropertyDtoCopyWithImpl<$Res, $Val extends PropertyDto>
    implements $PropertyDtoCopyWith<$Res> {
  _$PropertyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? priceRange = null,
    Object? maxGuests = null,
    Object? description = freezed,
    Object? bedrooms = freezed,
    Object? bathrooms = freezed,
    Object? photoUrls = null,
    Object? amenities = null,
    Object? instantBook = null,
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
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as LocationDto,
            priceRange: null == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                      as PriceRangeDto,
            maxGuests: null == maxGuests
                ? _value.maxGuests
                : maxGuests // ignore: cast_nullable_to_non_nullable
                      as int,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            bedrooms: freezed == bedrooms
                ? _value.bedrooms
                : bedrooms // ignore: cast_nullable_to_non_nullable
                      as int?,
            bathrooms: freezed == bathrooms
                ? _value.bathrooms
                : bathrooms // ignore: cast_nullable_to_non_nullable
                      as int?,
            photoUrls: null == photoUrls
                ? _value.photoUrls
                : photoUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            amenities: null == amenities
                ? _value.amenities
                : amenities // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            instantBook: null == instantBook
                ? _value.instantBook
                : instantBook // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of PropertyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get location {
    return $LocationDtoCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of PropertyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceRangeDtoCopyWith<$Res> get priceRange {
    return $PriceRangeDtoCopyWith<$Res>(_value.priceRange, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyDtoImplCopyWith<$Res>
    implements $PropertyDtoCopyWith<$Res> {
  factory _$$PropertyDtoImplCopyWith(
    _$PropertyDtoImpl value,
    $Res Function(_$PropertyDtoImpl) then,
  ) = __$$PropertyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    LocationDto location,
    @JsonKey(name: 'price_range') PriceRangeDto priceRange,
    @JsonKey(name: 'max_guests') int maxGuests,
    String? description,
    int? bedrooms,
    int? bathrooms,
    @JsonKey(name: 'photo_urls') List<String> photoUrls,
    List<String> amenities,
    @JsonKey(name: 'instant_book') bool instantBook,
  });

  @override
  $LocationDtoCopyWith<$Res> get location;
  @override
  $PriceRangeDtoCopyWith<$Res> get priceRange;
}

/// @nodoc
class __$$PropertyDtoImplCopyWithImpl<$Res>
    extends _$PropertyDtoCopyWithImpl<$Res, _$PropertyDtoImpl>
    implements _$$PropertyDtoImplCopyWith<$Res> {
  __$$PropertyDtoImplCopyWithImpl(
    _$PropertyDtoImpl _value,
    $Res Function(_$PropertyDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PropertyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? priceRange = null,
    Object? maxGuests = null,
    Object? description = freezed,
    Object? bedrooms = freezed,
    Object? bathrooms = freezed,
    Object? photoUrls = null,
    Object? amenities = null,
    Object? instantBook = null,
  }) {
    return _then(
      _$PropertyDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as LocationDto,
        priceRange: null == priceRange
            ? _value.priceRange
            : priceRange // ignore: cast_nullable_to_non_nullable
                  as PriceRangeDto,
        maxGuests: null == maxGuests
            ? _value.maxGuests
            : maxGuests // ignore: cast_nullable_to_non_nullable
                  as int,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        bedrooms: freezed == bedrooms
            ? _value.bedrooms
            : bedrooms // ignore: cast_nullable_to_non_nullable
                  as int?,
        bathrooms: freezed == bathrooms
            ? _value.bathrooms
            : bathrooms // ignore: cast_nullable_to_non_nullable
                  as int?,
        photoUrls: null == photoUrls
            ? _value._photoUrls
            : photoUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        amenities: null == amenities
            ? _value._amenities
            : amenities // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        instantBook: null == instantBook
            ? _value.instantBook
            : instantBook // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyDtoImpl implements _PropertyDto {
  const _$PropertyDtoImpl({
    required this.id,
    required this.title,
    required this.location,
    @JsonKey(name: 'price_range') required this.priceRange,
    @JsonKey(name: 'max_guests') required this.maxGuests,
    this.description,
    this.bedrooms,
    this.bathrooms,
    @JsonKey(name: 'photo_urls')
    final List<String> photoUrls = const <String>[],
    final List<String> amenities = const <String>[],
    @JsonKey(name: 'instant_book') this.instantBook = false,
  }) : _photoUrls = photoUrls,
       _amenities = amenities;

  factory _$PropertyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final LocationDto location;
  @override
  @JsonKey(name: 'price_range')
  final PriceRangeDto priceRange;
  @override
  @JsonKey(name: 'max_guests')
  final int maxGuests;
  @override
  final String? description;
  @override
  final int? bedrooms;
  @override
  final int? bathrooms;
  final List<String> _photoUrls;
  @override
  @JsonKey(name: 'photo_urls')
  List<String> get photoUrls {
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoUrls);
  }

  final List<String> _amenities;
  @override
  @JsonKey()
  List<String> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  @override
  @JsonKey(name: 'instant_book')
  final bool instantBook;

  @override
  String toString() {
    return 'PropertyDto(id: $id, title: $title, location: $location, priceRange: $priceRange, maxGuests: $maxGuests, description: $description, bedrooms: $bedrooms, bathrooms: $bathrooms, photoUrls: $photoUrls, amenities: $amenities, instantBook: $instantBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.maxGuests, maxGuests) ||
                other.maxGuests == maxGuests) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            const DeepCollectionEquality().equals(
              other._photoUrls,
              _photoUrls,
            ) &&
            const DeepCollectionEquality().equals(
              other._amenities,
              _amenities,
            ) &&
            (identical(other.instantBook, instantBook) ||
                other.instantBook == instantBook));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    location,
    priceRange,
    maxGuests,
    description,
    bedrooms,
    bathrooms,
    const DeepCollectionEquality().hash(_photoUrls),
    const DeepCollectionEquality().hash(_amenities),
    instantBook,
  );

  /// Create a copy of PropertyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyDtoImplCopyWith<_$PropertyDtoImpl> get copyWith =>
      __$$PropertyDtoImplCopyWithImpl<_$PropertyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyDtoImplToJson(this);
  }
}

abstract class _PropertyDto implements PropertyDto {
  const factory _PropertyDto({
    required final String id,
    required final String title,
    required final LocationDto location,
    @JsonKey(name: 'price_range') required final PriceRangeDto priceRange,
    @JsonKey(name: 'max_guests') required final int maxGuests,
    final String? description,
    final int? bedrooms,
    final int? bathrooms,
    @JsonKey(name: 'photo_urls') final List<String> photoUrls,
    final List<String> amenities,
    @JsonKey(name: 'instant_book') final bool instantBook,
  }) = _$PropertyDtoImpl;

  factory _PropertyDto.fromJson(Map<String, dynamic> json) =
      _$PropertyDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  LocationDto get location;
  @override
  @JsonKey(name: 'price_range')
  PriceRangeDto get priceRange;
  @override
  @JsonKey(name: 'max_guests')
  int get maxGuests;
  @override
  String? get description;
  @override
  int? get bedrooms;
  @override
  int? get bathrooms;
  @override
  @JsonKey(name: 'photo_urls')
  List<String> get photoUrls;
  @override
  List<String> get amenities;
  @override
  @JsonKey(name: 'instant_book')
  bool get instantBook;

  /// Create a copy of PropertyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyDtoImplCopyWith<_$PropertyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
