import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travela/core/di/service_locator.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_bloc.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_event.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_state.dart';
import 'package:travela/features/property_search/presentation/widgets/property_search_form.dart';
import 'package:travela/features/property_search/presentation/widgets/loading_view.dart';
import 'package:travela/features/property_search/presentation/widgets/empty_view.dart';
import 'package:travela/features/property_search/presentation/widgets/error_view.dart';
import 'package:travela/features/property_search/presentation/widgets/property_list.dart';

/// Property Search Page
///
/// Integrates the presentation widgets with [PropertySearchBloc]. The page is
/// the composition root for the feature's presentation and provides the Bloc
/// using GetIt-registered factory.
class PropertySearchPage extends StatelessWidget {
  const PropertySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PropertySearchBloc>(
      create: (_) => sl.get<PropertySearchBloc>(),
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
                switch (state.status) {
                  case PropertySearchStatus.initial:
                    return PropertySearchForm(
                      onSearch: (location, checkIn, checkOut, minPrice, maxPrice, adults, children, infants) =>
                          context.read<PropertySearchBloc>().add(
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

                  case PropertySearchStatus.loading:
                    return const Center(child: LoadingView());

                  case PropertySearchStatus.empty:
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        PropertySearchForm(
                          onSearch: (location, checkIn, checkOut, minPrice, maxPrice, adults, children, infants) =>
                              context.read<PropertySearchBloc>().add(
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
                        ),
                        const SizedBox(height: 16),
                        const Expanded(child: EmptyView()),
                      ],
                    );

                  case PropertySearchStatus.success:
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        PropertySearchForm(
                          onSearch: (location, checkIn, checkOut, minPrice, maxPrice, adults, children, infants) =>
                              context.read<PropertySearchBloc>().add(
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
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: PropertyList(properties: state.properties),
                        ),
                      ],
                    );

                  case PropertySearchStatus.failure:
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        PropertySearchForm(
                          onSearch: (location, checkIn, checkOut, minPrice, maxPrice, adults, children, infants) =>
                              context.read<PropertySearchBloc>().add(
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
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: ErrorView(
                            message: state.failure?.message ?? 'Something went wrong',
                            onRetry: null,
                          ),
                        ),
                      ],
                    );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
