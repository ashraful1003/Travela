import 'package:flutter/material.dart';

import 'package:travela/features/property_search/presentation/widgets/property_card.dart';

/// Displays a vertical list of property cards.
class PropertyList extends StatelessWidget {
  const PropertyList({super.key, required this.properties});

  final List<Map<String, String>> properties;

  @override
  Widget build(BuildContext context) {
    if (properties.isEmpty) {
      return const Center(child: Text('No properties to show'));
    }

    return ListView.separated(
      itemCount: properties.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final item = properties[index];
        return PropertyCard(
          title: item['title'] ?? 'Untitled',
          subtitle: item['subtitle'] ?? '',
          imageUrl: item['image'] ?? '',
        );
      },
    );
  }
}
