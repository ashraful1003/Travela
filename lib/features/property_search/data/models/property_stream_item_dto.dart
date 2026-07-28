// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_stream_item_dto.freezed.dart';
part 'property_stream_item_dto.g.dart';

@freezed
class PropertyImageDto with _$PropertyImageDto {
  const factory PropertyImageDto({required int id, required String url}) =
      _PropertyImageDto;

  factory PropertyImageDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyImageDtoFromJson(json);
}

@freezed
class FeaturedBadgeDto with _$FeaturedBadgeDto {
  const factory FeaturedBadgeDto({
    int? id,
    String? name,
    String? slug,
    String? icon,
  }) = _FeaturedBadgeDto;

  factory FeaturedBadgeDto.fromJson(Map<String, dynamic> json) =>
      _$FeaturedBadgeDtoFromJson(json);
}

/// DTO for a single `item` SSE event: one property card's worth of data.
///
/// This is the flat payload documented by the API directly - not a wrapper
/// around a separate "property" object.
@freezed
class PropertyStreamItemDto with _$PropertyStreamItemDto {
  const factory PropertyStreamItemDto({
    required int id,
    required String title,
    required String address,
    required num price,
    @JsonKey(name: 'offer_price') num? offerPrice,
    @JsonKey(name: 'reviews_avg') double? reviewsAvg,
    @JsonKey(name: 'reviews_count') @Default(0) int reviewsCount,
    @Default(<PropertyImageDto>[]) List<PropertyImageDto> images,
    @JsonKey(name: 'is_hotel') @Default(false) bool isHotel,
    @JsonKey(name: 'featured_badge') FeaturedBadgeDto? featuredBadge,
    int? bedroom,
    int? beds,
    int? bathroom,
    @JsonKey(name: 'max_guest') int? maxGuest,
  }) = _PropertyStreamItemDto;

  factory PropertyStreamItemDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyStreamItemDtoFromJson(json);
}
