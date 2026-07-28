import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

/// DTO representing a location as returned by the remote Property API.
///
/// API payload example:
/// {
///   "name": "Downtown",
///   "address": "123 Main St",
///   "city": "Metropolis",
///   "country": "US",
///   "latitude": 12.34,
///   "longitude": 56.78
/// }
///
/// Purpose:
/// - Provide a serialization-safe structure for transport. This DTO lives in
///   the Data layer and will be mapped to the Domain `Location` entity by the
///   Mapper layer.
@freezed
class LocationDto with _$LocationDto {
  const factory LocationDto({
    required String name,
    String? address,
    String? city,
    String? country,
    double? latitude,
    double? longitude,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}
