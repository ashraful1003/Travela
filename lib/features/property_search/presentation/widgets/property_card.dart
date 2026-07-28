import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travela/core/utils/currency_formatter.dart';

/// Card used in the search results list. Shows, at minimum, the first image,
/// title, address, price and review score (when present) for one result.
class PropertyCard extends StatelessWidget {
  const PropertyCard({
    required this.title,
    required this.address,
    required this.price,
    super.key,
    this.imageUrl,
    this.offerPrice,
    this.reviewsAvg,
    this.reviewsCount = 0,
    this.badgeLabel,
  });

  final String title;
  final String address;
  final num price;
  final String? imageUrl;
  final num? offerPrice;
  final double? reviewsAvg;
  final int reviewsCount;
  final String? badgeLabel;

  @override
  Widget build(BuildContext context) {
    final bool hasOffer = offerPrice != null && offerPrice! < price;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 96,
                height: 96,
                child: _buildImage(),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (badgeLabel != null) ...<Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        badgeLabel!,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    address,
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  if (reviewsAvg != null) ...<Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(Icons.star, size: 14, color: Colors.amber),
                        const SizedBox(width: 4),
                        Text(
                          reviewsAvg!.toStringAsFixed(1),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        if (reviewsCount > 0) ...<Widget>[
                          const SizedBox(width: 4),
                          Text(
                            '($reviewsCount)',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 4),
                  ],
                  Row(
                    children: <Widget>[
                      if (hasOffer) ...<Widget>[
                        Text(
                          CurrencyFormatter.format(price.toDouble()),
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                decoration: TextDecoration.lineThrough,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                        ),
                        const SizedBox(width: 6),
                      ],
                      Text(
                        CurrencyFormatter.format(
                          (hasOffer ? offerPrice! : price).toDouble(),
                        ),
                        style: Theme.of(context).textTheme.titleSmall
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return _imagePlaceholder();
    }
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      fit: BoxFit.cover,
      placeholder: (_, __) => const Center(
        child: SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
      errorWidget: (_, __, ___) => _imagePlaceholder(),
    );
  }

  Widget _imagePlaceholder() {
    return Container(
      color: Colors.grey.shade200,
      child: const Icon(
        Icons.home,
        size: 32,
        color: Colors.grey,
        semanticLabel: 'Property image placeholder',
      ),
    );
  }
}
