import 'package:flutter/material.dart';

/// Simple property card used in the search results list.
class PropertyCard extends StatelessWidget {
  const PropertyCard({super.key, required this.title, this.subtitle, this.imageUrl});

  final String title;
  final String? subtitle;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              width: 96,
              height: 72,
              color: Colors.grey.shade200,
              child: imageUrl != null && imageUrl!.isNotEmpty
                  ? Image.network(imageUrl!, fit: BoxFit.cover)
                  : const Icon(Icons.home, size: 40, color: Colors.grey),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleMedium),
                  if (subtitle != null) ...[
                    const SizedBox(height: 6),
                    Text(subtitle!, style: Theme.of(context).textTheme.bodySmall),
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
