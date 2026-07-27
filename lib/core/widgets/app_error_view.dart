import 'package:flutter/material.dart';

/// Generic error view that displays an error message and an optional retry
/// action. Feature-specific screens may compose this widget with their own
/// domain-level messages.
class AppErrorView extends StatelessWidget {
  /// Error message to display.
  final String message;

  /// Optional retry callback.
  final VoidCallback? onRetry;

  /// Creates an [AppErrorView].
  const AppErrorView({super.key, required this.message, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message, textAlign: TextAlign.center),
          if (onRetry != null) ...[
            const SizedBox(height: 12),
            ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
          ],
        ],
      ),
    );
  }
}
