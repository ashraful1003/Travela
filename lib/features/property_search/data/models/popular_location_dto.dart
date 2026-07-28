// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_location_dto.freezed.dart';
part 'popular_location_dto.g.dart';

/// DTO for a single entry returned by `GET /api/popular-locations`.
@freezed
class PopularLocationDto with _$PopularLocationDto {
  const factory PopularLocationDto({
    required int id,
    required String name,
    @JsonKey(name: 'name_bn') String? nameBn,
    int? order,
    required double lat,
    required double lng,
    double? within,
    @JsonKey(name: 'tier_1') double? tier1,
    @JsonKey(name: 'tier_2') double? tier2,
  }) = _PopularLocationDto;

  factory PopularLocationDto.fromJson(Map<String, dynamic> json) =>
      _$PopularLocationDtoFromJson(json);
}
