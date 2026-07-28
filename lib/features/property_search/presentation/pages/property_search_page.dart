import 'package:flutter/material.dart';
import 'package:travela/features/property_search/presentation/widgets/property_search_form.dart';

/// Property Search Page
///
/// Composes the search form and results region. This page is presentation-only
/// and exposes callbacks used later to connect to the BLoC.
class PropertySearchPage extends StatelessWidget {
  const PropertySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Search'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: PropertySearchForm(),
        ),
      ),
    );
  }
}
