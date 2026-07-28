// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_location_dto.freezed.dart';
part 'popular_location_dto.g.dart';

@freezed
class PopularLocationDto with _$PopularLocationDto {
  const factory PopularLocationDto({
    required String id,
    required String name,
    required double lat,
    required double lng,
    String? within,
    @JsonKey(name: 'tier_1') String? tier1,
    @JsonKey(name: 'tier_2') String? tier2,
  }) = _PopularLocationDto;

  factory PopularLocationDto.fromJson(Map<String, dynamic> json) =>
      _$PopularLocationDtoFromJson(json);
}
