import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_metadata.freezed.dart';

/// Immutable metadata emitted by the single `meta` event that opens a
/// streaming search, ahead of any `item` events.
@freezed
class SearchMetadata with _$SearchMetadata {
  const factory SearchMetadata({
    /// Total number of results the search matched (shown as "N stays").
    required int totalCount,

    /// Current page number, when the backend reports pagination.
    int? page,

    /// Total number of pages available, when the backend reports pagination.
    int? totalPages,
  }) = _SearchMetadata;
}
