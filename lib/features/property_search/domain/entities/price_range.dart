import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_range.freezed.dart';

/// Business-level representation of a price interval.
///
/// Responsibility
/// - Encapsulate the minimum and maximum price constraints for searches and
///   offers. This is intentionally currency-aware but transport-agnostic.
///
/// Important invariant
/// - A PriceRange must always satisfy `min <= max`.
///
/// Why it exists
/// - Search filters and property listings commonly include price boundaries.
///   Keeping a dedicated entity clarifies intent and avoids scattering price
///   fields across the codebase.
@freezed
class PriceRange with _$PriceRange {
  // Private constructor for Freezed to allow additional factory validation.
  const PriceRange._();

  /// Public constructor that validates the invariant `min <= max` and throws
  /// an [ArgumentError] if the invariant is violated. This guarantees the
  /// domain object can never represent an invalid price range.
  factory PriceRange({
    required double min,
    required double max,
    required String currency,
  }) {
    if (min > max) {
      throw ArgumentError.value(
        <double>[min, max],
        'min,max',
        'PriceRange requires min <= max',
      );
    }

    return PriceRange._internal(min: min, max: max, currency: currency);
  }

  // Internal const factory used after validation. This is the constructor the
  // generated Freezed implementation uses to create immutable instances.
  const factory PriceRange._internal({
    required double min,
    required double max,
    required String currency,
  }) = _PriceRange;
}
