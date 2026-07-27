import 'package:flutter/material.dart';
import 'package:travela/core/constants/app_strings_global.dart';

/// Generic empty state widget used when a list or content area has no items.
class EmptyState extends StatelessWidget {
  /// Optional message to show; falls back to a generic message.
  final String message;

  /// Optional action label and callback.
  final String? actionLabel;
  final VoidCallback? onAction;

  const EmptyState({super.key, this.message = AppStringsGlobal.emptyStateMessage, this.actionLabel, this.onAction});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(message, textAlign: TextAlign.center),
          if (actionLabel != null && onAction != null) ...<Widget>[
            const SizedBox(height: 12),
            ElevatedButton(onPressed: onAction, child: Text(actionLabel!)),
          ]
        ],
      ),
    );
  }
}
