import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_range.freezed.dart';

/// Business-level representation of a price interval.
///
/// Responsibility
/// - Encapsulate the minimum and maximum price constraints for searches and
///   offers. This is intentionally currency-aware but transport-agnostic.
///
/// Why it exists
/// - Search filters and property listings commonly include price boundaries.
///   Keeping a dedicated entity clarifies intent and avoids scattering price
///   fields across the codebase.
@freezed
class PriceRange with _$PriceRange {
  const factory PriceRange({
    /// Minimum price inclusive.
    required double min,

    /// Maximum price inclusive.
    required double max,

    /// ISO 4217 currency code (e.g., "USD", "EUR"). Kept as string to avoid
    /// tying to a monetary library at this layer.
    required String currency,
  }) = _PriceRange;
}
