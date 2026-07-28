import 'package:flutter/material.dart';

/// Generic loading view used in result area.
class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircularProgressIndicator(),
          SizedBox(height: 12),
          Text('Loading results...'),
        ],
      ),
    );
  }
}
