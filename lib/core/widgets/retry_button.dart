import 'package:flutter/material.dart';

/// Small reusable retry button used in error/empty states.
class RetryButton extends StatelessWidget {
  /// Callback invoked when retry is pressed.
  final VoidCallback onRetry;

  /// Optional label.
  final String label;

  const RetryButton({required this.onRetry, super.key, this.label = 'Retry'});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onRetry, child: Text(label));
  }
}
