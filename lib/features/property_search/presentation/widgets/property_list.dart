import 'package:flutter/material.dart';

import 'package:travela/features/property_search/domain/entities/property.dart';
import 'package:travela/features/property_search/presentation/widgets/property_card.dart';

/// Displays a vertical list of property cards using Domain [Property] entities.
class PropertyList extends StatelessWidget {
  const PropertyList({required this.properties, super.key});

  final List<Property> properties;

  @override
  Widget build(BuildContext context) {
    if (properties.isEmpty) {
      return const Center(child: Text('No properties to show'));
    }

    return ListView.separated(
      itemCount: properties.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (BuildContext context, int index) {
        final Property item = properties[index];
        return PropertyCard(
          title: item.title,
          subtitle: item.location.name,
          imageUrl: item.photoUrls.isNotEmpty ? item.photoUrls.first : null,
        );
      },
    );
  }
}
