import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travela/core/di/service_locator.dart';
import 'package:travela/features/property_search/presentation/bloc/location_autocomplete_bloc.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_bloc.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_event.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_state.dart';
import 'package:travela/features/property_search/presentation/widgets/empty_view.dart';
import 'package:travela/features/property_search/presentation/widgets/error_view.dart';
import 'package:travela/features/property_search/presentation/widgets/loading_view.dart';
import 'package:travela/features/property_search/presentation/widgets/property_list.dart';
import 'package:travela/features/property_search/presentation/widgets/property_search_form.dart';
import 'package:travela/features/property_search/presentation/widgets/search_metadata_banner.dart';

/// Property Search Page
///
/// Integrates the presentation widgets with [PropertySearchBloc]. The page is
/// the composition root for the feature's presentation and provides the Bloc
/// using GetIt-registered factory.
///
/// Rendering is driven entirely by [PropertySearchState]: while a search is
/// `loading`, metadata and properties already received are shown immediately
/// as they arrive on the Bloc's stream, rather than waiting for the full
/// result set.
class PropertySearchPage extends StatelessWidget {
  const PropertySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<PropertySearchBloc>(
          create: (_) => sl.get<PropertySearchBloc>(),
        ),
        BlocProvider<LocationAutocompleteBloc>(
          create: (_) => sl.get<LocationAutocompleteBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Property Search'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<PropertySearchBloc, PropertySearchState>(
              builder: (BuildContext context, PropertySearchState state) {
                if (state.status == PropertySearchStatus.initial) {
                  return _buildForm(context);
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _buildForm(context),
                    const SizedBox(height: 16),
                    if (state.metadata != null) ...<Widget>[
                      SearchMetadataBanner(metadata: state.metadata!),
                      const SizedBox(height: 12),
                    ],
                    Expanded(child: _buildResults(state)),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the results area for the current [state]. A search in progress
  /// shows whatever properties have streamed in so far (plus a lightweight
  /// progress indicator) instead of blocking on the full result set.
  Widget _buildResults(PropertySearchState state) {
    switch (state.status) {
      case PropertySearchStatus.initial:
        return const SizedBox.shrink();

      case PropertySearchStatus.loading:
        if (state.properties.isEmpty) {
          return const LoadingView();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const LinearProgressIndicator(),
            const SizedBox(height: 12),
            Expanded(child: PropertyList(properties: state.properties)),
          ],
        );

      case PropertySearchStatus.success:
        return PropertyList(properties: state.properties);

      case PropertySearchStatus.empty:
        return const EmptyView();

      case PropertySearchStatus.failure:
        return ErrorView(
          message: state.failure?.message ?? 'Something went wrong',
          onRetry: null,
        );
    }
  }

  Widget _buildForm(BuildContext context) {
    return PropertySearchForm(
      onSearch:
          (
            String location,
            DateTime? checkIn,
            DateTime? checkOut,
            double minPrice,
            double maxPrice,
            int adults,
            int children,
            int infants,
          ) => context.read<PropertySearchBloc>().add(
            PropertySearchEvent.searchSubmitted(
              location: location,
              checkIn: checkIn,
              checkOut: checkOut,
              minPrice: minPrice,
              maxPrice: maxPrice,
              currency: 'BDT',
              adults: adults,
              children: children,
              infants: infants,
            ),
          ),
    );
  }
}
