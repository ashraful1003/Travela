import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';
import 'package:travela/features/property_search/presentation/bloc/location_autocomplete_bloc.dart';
import 'package:travela/features/property_search/presentation/bloc/location_autocomplete_event.dart';
import 'package:travela/features/property_search/presentation/bloc/location_autocomplete_state.dart';

/// Location autocomplete widget.
///
/// - Debounces input via the feature Debouncer inside the Bloc.
/// - Shows suggestions, loading, empty and error states.
/// - Calls [onSelected] when a suggestion is tapped.
class LocationAutocomplete extends StatefulWidget {
  const LocationAutocomplete({super.key, this.onSelected});

  final ValueChanged<SelectedLocation>? onSelected;

  @override
  State<LocationAutocomplete> createState() => _LocationAutocompleteState();
}

class _LocationAutocompleteState extends State<LocationAutocomplete> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationAutocompleteBloc, LocationAutocompleteState>(
      builder: (BuildContext context, LocationAutocompleteState state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _controller,
              focusNode: _focusNode,
              decoration: const InputDecoration(
                labelText: 'Location',
                hintText: 'Where are you going?',
                prefixIcon: Icon(Icons.location_on),
              ),
              onChanged: (String q) => context.read<LocationAutocompleteBloc>().add(LocationAutocompleteEvent.queryChanged(q)),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 8),
            // Suggestion area
            if (state.status == LocationAutocompleteStatus.loading)
              const SizedBox(height: 48, child: Center(child: CircularProgressIndicator()))
            else if (state.status == LocationAutocompleteStatus.failure)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(state.failure?.message ?? 'Failed to load suggestions', style: TextStyle(color: Theme.of(context).colorScheme.error)),
              )
            else if (state.status == LocationAutocompleteStatus.empty)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('No suggestions'),
              )
            else if (state.suggestions.isNotEmpty)
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 200),
                child: Card(
                  elevation: 2,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: state.suggestions.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (BuildContext context, int index) {
                      final SelectedLocation s = state.suggestions[index];
                      return ListTile(
                        title: Text(s.name),
                        subtitle: Text(s.within ?? ''),
                        onTap: () {
                          _controller.text = s.name;
                          _focusNode.unfocus();
                          context.read<LocationAutocompleteBloc>().add(LocationAutocompleteEvent.locationSelected(s));
                          if (widget.onSelected != null) widget.onSelected!(s);
                        },
                      );
                    },
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
