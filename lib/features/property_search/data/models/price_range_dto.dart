import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_range_dto.freezed.dart';
part 'price_range_dto.g.dart';

/// DTO representing a price interval returned by the API.
///
/// API payload example:
/// {
///   "min": 10.0,
///   "max": 200.0,
///   "currency": "USD"
/// }
///
/// Purpose:
/// - Transport-level representation of a price range. Mapped to Domain
///   `PriceRange` by mappers in the Data layer.
@freezed
class PriceRangeDto with _$PriceRangeDto {
  const factory PriceRangeDto({
    required double min,
    required double max,
    required String currency,
  }) = _PriceRangeDto;

  factory PriceRangeDto.fromJson(Map<String, dynamic> json) =>
      _$PriceRangeDtoFromJson(json);
}
