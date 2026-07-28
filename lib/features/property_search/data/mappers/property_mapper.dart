import 'package:travela/features/property_search/data/models/property_stream_item_dto.dart';
import 'package:travela/features/property_search/domain/entities/property.dart';

/// Maps [PropertyStreamItemDto] (Data) to Domain [Property].
extension PropertyStreamItemDtoMapper on PropertyStreamItemDto {
  /// Convert this DTO into a Domain [Property].
  Property toDomain() {
    return Property(
      id: id.toString(),
      title: title,
      address: address,
      price: price,
      offerPrice: offerPrice,
      reviewsAvg: reviewsAvg,
      reviewsCount: reviewsCount,
      imageUrls: images.map((PropertyImageDto e) => e.url).toList(),
      isHotel: isHotel,
      featuredBadgeLabel: featuredBadge?.name,
      bedroom: bedroom,
      beds: beds,
      bathroom: bathroom,
      maxGuest: maxGuest,
    );
  }
}
