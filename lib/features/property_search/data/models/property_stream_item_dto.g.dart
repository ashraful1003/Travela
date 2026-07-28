// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_stream_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyImageDtoImpl _$$PropertyImageDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyImageDtoImpl(
  id: (json['id'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic> _$$PropertyImageDtoImplToJson(
  _$PropertyImageDtoImpl instance,
) => <String, dynamic>{'id': instance.id, 'url': instance.url};

_$FeaturedBadgeDtoImpl _$$FeaturedBadgeDtoImplFromJson(
  Map<String, dynamic> json,
) => _$FeaturedBadgeDtoImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  icon: json['icon'] as String?,
);

Map<String, dynamic> _$$FeaturedBadgeDtoImplToJson(
  _$FeaturedBadgeDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'icon': instance.icon,
};

_$PropertyStreamItemDtoImpl _$$PropertyStreamItemDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PropertyStreamItemDtoImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  address: json['address'] as String,
  price: json['price'] as num,
  offerPrice: json['offer_price'] as num?,
  reviewsAvg: (json['reviews_avg'] as num?)?.toDouble(),
  reviewsCount: (json['reviews_count'] as num?)?.toInt() ?? 0,
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => PropertyImageDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PropertyImageDto>[],
  isHotel: json['is_hotel'] as bool? ?? false,
  featuredBadge: json['featured_badge'] == null
      ? null
      : FeaturedBadgeDto.fromJson(
          json['featured_badge'] as Map<String, dynamic>,
        ),
  bedroom: (json['bedroom'] as num?)?.toInt(),
  beds: (json['beds'] as num?)?.toInt(),
  bathroom: (json['bathroom'] as num?)?.toInt(),
  maxGuest: (json['max_guest'] as num?)?.toInt(),
);

Map<String, dynamic> _$$PropertyStreamItemDtoImplToJson(
  _$PropertyStreamItemDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'address': instance.address,
  'price': instance.price,
  'offer_price': instance.offerPrice,
  'reviews_avg': instance.reviewsAvg,
  'reviews_count': instance.reviewsCount,
  'images': instance.images,
  'is_hotel': instance.isHotel,
  'featured_badge': instance.featuredBadge,
  'bedroom': instance.bedroom,
  'beds': instance.beds,
  'bathroom': instance.bathroom,
  'max_guest': instance.maxGuest,
};
