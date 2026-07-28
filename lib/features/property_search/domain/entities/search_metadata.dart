import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_metadata.freezed.dart';

/// Immutable metadata emitted at the start (or during) a progressive search.
///
/// Responsibility:
/// - Carry opaque metadata produced by the backend (search id, estimates) that
///   may be necessary for correlating streamed items or for follow-up requests.
///
/// Note: Keep this entity infrastructure-free; it intentionally avoids any
/// transport or parsing concerns.
@freezed
class SearchMetadata with _$SearchMetadata {
  const factory SearchMetadata({
    /// Stable identifier for the search session (if provided by backend).
    required String searchId,

    /// Optional estimated total number of results (may be null if unknown).
    int? estimatedTotal,

    /// Time when the metadata/event was issued by the backend.
    DateTime? timestamp,
  }) = _SearchMetadata;
}
