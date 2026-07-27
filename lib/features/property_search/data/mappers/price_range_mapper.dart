import 'package:travela/features/property_search/data/models/price_range_dto.dart';
import 'package:travela/features/property_search/domain/entities/price_range.dart';

/// Maps [PriceRangeDto] to Domain [PriceRange].
///
/// Purpose:
/// - Convert transport-level pricing information into the strongly-typed
///   domain PriceRange. The Domain constructor enforces the invariant
///   `min <= max`; if the DTO violates this the constructor will throw an
///   [ArgumentError]. Mapping does not attempt to correct API errors.
extension PriceRangeDtoMapper on PriceRangeDto {
  /// Convert to Domain [PriceRange].
  PriceRange toDomain() {
    return PriceRange(min: min, max: max, currency: currency);
  }
}
