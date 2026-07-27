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

  /// Location where the property is situated.
  Location get location => throw _privateConstructorUsedError;

  /// Representative pricing for the property.
  PriceRange get priceRange => throw _privateConstructorUsedError;

  /// Maximum number of guests supported.
  int get maxGuests => throw _privateConstructorUsedError;

  /// Longer description. Nullable if not provided.
  String? get description => throw _privateConstructorUsedError;

  /// Number of bedrooms (optional as some listings may be studio-like).
  int? get bedrooms => throw _privateConstructorUsedError;

  /// Number of bathrooms.
  int? get bathrooms => throw _privateConstructorUsedError;

  /// List of photo URLs. This is a business-level concept; transport
  /// representation (DTO) will own URL formatting and validation.
  List<String> get photoUrls => throw _privateConstructorUsedError;

  /// List of amenity identifiers or human strings describing available
  /// amenities (e.g., "WiFi", "Air conditioning"). Kept generic.
  List<String> get amenities => throw _privateConstructorUsedError;

  /// Whether the property supports instant booking.
  bool get instantBook => throw _privateConstructorUsedError;

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
    Location location,
    PriceRange priceRange,
    int maxGuests,
    String? description,
    int? bedrooms,
    int? bathrooms,
    List<String> photoUrls,
    List<String> amenities,
    bool instantBook,
  });

  $LocationCopyWith<$Res> get location;
  $PriceRangeCopyWith<$Res> get priceRange;
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
                      as Location,
            priceRange: null == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                      as PriceRange,
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

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceRangeCopyWith<$Res> get priceRange {
    return $PriceRangeCopyWith<$Res>(_value.priceRange, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
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
    Location location,
    PriceRange priceRange,
    int maxGuests,
    String? description,
    int? bedrooms,
    int? bathrooms,
    List<String> photoUrls,
    List<String> amenities,
    bool instantBook,
  });

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $PriceRangeCopyWith<$Res> get priceRange;
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
      _$PropertyImpl(
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
                  as Location,
        priceRange: null == priceRange
            ? _value.priceRange
            : priceRange // ignore: cast_nullable_to_non_nullable
                  as PriceRange,
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

class _$PropertyImpl implements _Property {
  const _$PropertyImpl({
    required this.id,
    required this.title,
    required this.location,
    required this.priceRange,
    required this.maxGuests,
    this.description,
    this.bedrooms,
    this.bathrooms,
    final List<String> photoUrls = const <String>[],
    final List<String> amenities = const <String>[],
    this.instantBook = false,
  }) : _photoUrls = photoUrls,
       _amenities = amenities;

  /// Unique business identifier for the property.
  @override
  final String id;

  /// Short human-readable title.
  @override
  final String title;

  /// Location where the property is situated.
  @override
  final Location location;

  /// Representative pricing for the property.
  @override
  final PriceRange priceRange;

  /// Maximum number of guests supported.
  @override
  final int maxGuests;

  /// Longer description. Nullable if not provided.
  @override
  final String? description;

  /// Number of bedrooms (optional as some listings may be studio-like).
  @override
  final int? bedrooms;

  /// Number of bathrooms.
  @override
  final int? bathrooms;

  /// List of photo URLs. This is a business-level concept; transport
  /// representation (DTO) will own URL formatting and validation.
  final List<String> _photoUrls;

  /// List of photo URLs. This is a business-level concept; transport
  /// representation (DTO) will own URL formatting and validation.
  @override
  @JsonKey()
  List<String> get photoUrls {
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoUrls);
  }

  /// List of amenity identifiers or human strings describing available
  /// amenities (e.g., "WiFi", "Air conditioning"). Kept generic.
  final List<String> _amenities;

  /// List of amenity identifiers or human strings describing available
  /// amenities (e.g., "WiFi", "Air conditioning"). Kept generic.
  @override
  @JsonKey()
  List<String> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  /// Whether the property supports instant booking.
  @override
  @JsonKey()
  final bool instantBook;

  @override
  String toString() {
    return 'Property(id: $id, title: $title, location: $location, priceRange: $priceRange, maxGuests: $maxGuests, description: $description, bedrooms: $bedrooms, bathrooms: $bathrooms, photoUrls: $photoUrls, amenities: $amenities, instantBook: $instantBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyImpl &&
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
    required final Location location,
    required final PriceRange priceRange,
    required final int maxGuests,
    final String? description,
    final int? bedrooms,
    final int? bathrooms,
    final List<String> photoUrls,
    final List<String> amenities,
    final bool instantBook,
  }) = _$PropertyImpl;

  /// Unique business identifier for the property.
  @override
  String get id;

  /// Short human-readable title.
  @override
  String get title;

  /// Location where the property is situated.
  @override
  Location get location;

  /// Representative pricing for the property.
  @override
  PriceRange get priceRange;

  /// Maximum number of guests supported.
  @override
  int get maxGuests;

  /// Longer description. Nullable if not provided.
  @override
  String? get description;

  /// Number of bedrooms (optional as some listings may be studio-like).
  @override
  int? get bedrooms;

  /// Number of bathrooms.
  @override
  int? get bathrooms;

  /// List of photo URLs. This is a business-level concept; transport
  /// representation (DTO) will own URL formatting and validation.
  @override
  List<String> get photoUrls;

  /// List of amenity identifiers or human strings describing available
  /// amenities (e.g., "WiFi", "Air conditioning"). Kept generic.
  @override
  List<String> get amenities;

  /// Whether the property supports instant booking.
  @override
  bool get instantBook;

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
