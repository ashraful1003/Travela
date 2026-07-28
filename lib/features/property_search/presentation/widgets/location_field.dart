import 'package:flutter/material.dart';

/// Simple location input field.
///
/// Exposes [onChanged] and [onTap] hooks for integration with autocomplete or
/// place pickers. Currently uses a standard TextField for demonstration.
class LocationField extends StatelessWidget {
  const LocationField({super.key, this.onChanged, this.onTap});

  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Location',
        hintText: 'Where are you going?',
        prefixIcon: Icon(Icons.location_on),
      ),
      onChanged: onChanged,
      onTap: onTap,
      textInputAction: TextInputAction.next,
    );
  }
}
