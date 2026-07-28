import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_location.freezed.dart';

/// SelectedLocation domain entity
///
/// Reason: The selected location is a domain-level concept used by multiple
/// layers (Presentation for UI and Data for SSE/search). It must preserve the
/// complete metadata returned by the API (id, name, lat, lng, within, tier_1,
/// tier_2) so downstream systems (e.g., SSE) can rely on the same values.
@freezed
class SelectedLocation with _$SelectedLocation {
  const factory SelectedLocation({
    required String id,
    required String name,
    required double lat,
    required double lng,
    String? within,
    String? tier1,
    String? tier2,
  }) = _SelectedLocation;

  const SelectedLocation._();
}
