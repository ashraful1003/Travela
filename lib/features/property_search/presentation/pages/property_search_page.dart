import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travela/core/di/service_locator.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';
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
///
/// The whole screen (filter form + results) lives inside a single
/// [CustomScrollView] so the page scrolls as one unit - the form isn't
/// pinned above an independently-scrolling results box, which would hide
/// filters/content depending on where the user happens to scroll.
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
          child: BlocBuilder<PropertySearchBloc, PropertySearchState>(
            builder: (BuildContext context, PropertySearchState state) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    sliver: SliverToBoxAdapter(child: _buildForm(context)),
                  ),
                  if (state.metadata != null)
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      sliver: SliverToBoxAdapter(
                        child: SearchMetadataBanner(metadata: state.metadata!),
                      ),
                    ),
                  ..._buildResultSlivers(context, state),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  /// Builds the sliver(s) for the results area of the current [state]. A
  /// search in progress shows whatever properties have streamed in so far
  /// (plus a lightweight progress indicator) instead of blocking on the full
  /// result set.
  List<Widget> _buildResultSlivers(
    BuildContext context,
    PropertySearchState state,
  ) {
    switch (state.status) {
      case PropertySearchStatus.initial:
        return const <Widget>[];

      case PropertySearchStatus.loading:
        if (state.properties.isEmpty) {
          return <Widget>[
            const SliverFillRemaining(
              hasScrollBody: false,
              child: LoadingView(),
            ),
          ];
        }
        return <Widget>[
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            sliver: SliverToBoxAdapter(child: LinearProgressIndicator()),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            sliver: PropertyList.sliver(state.properties),
          ),
        ];

      case PropertySearchStatus.success:
        return <Widget>[
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            sliver: PropertyList.sliver(state.properties),
          ),
        ];

      case PropertySearchStatus.empty:
        return const <Widget>[
          SliverFillRemaining(hasScrollBody: false, child: EmptyView()),
        ];

      case PropertySearchStatus.failure:
        return <Widget>[
          SliverFillRemaining(
            hasScrollBody: false,
            child: ErrorView(
              message: state.failure?.message ?? 'Something went wrong',
              onRetry: () => context.read<PropertySearchBloc>().add(
                const PropertySearchEvent.retryRequested(),
              ),
            ),
          ),
        ];
    }
  }

  Widget _buildForm(BuildContext context) {
    return PropertySearchForm(
      onSearch:
          (
            SelectedLocation location,
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
              adults: adults,
              children: children,
              infants: infants,
            ),
          ),
    );
  }
}
