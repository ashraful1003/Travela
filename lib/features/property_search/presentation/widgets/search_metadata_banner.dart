import 'package:flutter/material.dart';
import 'package:travela/features/property_search/domain/entities/search_metadata.dart';

/// Displays search metadata (e.g. estimated result count) as soon as it is
/// available, ahead of the individual streamed property items.
class SearchMetadataBanner extends StatelessWidget {
  const SearchMetadataBanner({required this.metadata, super.key});

  final SearchMetadata metadata;

  @override
  Widget build(BuildContext context) {
    final int? estimatedTotal = metadata.estimatedTotal;
    final String resultWord = estimatedTotal == 1 ? 'result' : 'results';
    final String label = estimatedTotal != null
        ? 'Estimated $estimatedTotal $resultWord'
        : 'Search in progress…';

    return Row(
      children: <Widget>[
        Icon(
          Icons.info_outline,
          size: 18,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(label, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}
