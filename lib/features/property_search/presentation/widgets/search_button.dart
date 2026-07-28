import 'package:flutter/material.dart';

/// Search button used to submit the user's search criteria.
class SearchButton extends StatelessWidget {
  const SearchButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Text('Search'),
      ),
    );
  }
}
