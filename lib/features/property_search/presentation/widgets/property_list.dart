import 'package:flutter/material.dart';

import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/presentation/widgets/property_card.dart';

/// Displays a vertical list of property cards using Domain [Property] entities.
class PropertyList extends StatelessWidget {
  const PropertyList({required this.properties, super.key});

  final List<Property> properties;

  /// Builds the sliver form of this list so a caller (e.g. the search page)
  /// can lay it out inside a single page-level [CustomScrollView] alongside
  /// the filter form, rather than nesting an independently-scrolling list
  /// inside a fixed-height box.
  static Widget sliver(List<Property> properties) {
    return SliverList.builder(
      itemCount: properties.length,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: _buildCard(properties[index]),
      ),
    );
  }

  static Widget _buildCard(Property item) {
    return PropertyCard(
      title: item.title,
      address: item.address,
      price: item.price,
      offerPrice: item.offerPrice,
      reviewsAvg: item.reviewsAvg,
      reviewsCount: item.reviewsCount,
      imageUrl: item.imageUrls.isNotEmpty ? item.imageUrls.first : null,
      badgeLabel: item.featuredBadgeLabel,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (properties.isEmpty) {
      return const Center(child: Text('No properties to show'));
    }

    return ListView.separated(
      itemCount: properties.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (BuildContext context, int index) =>
          _buildCard(properties[index]),
    );
  }
}
