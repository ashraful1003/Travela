// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:travela/features/property_search/data/models/property_dto.dart';

part 'property_list_dto.freezed.dart';
part 'property_list_dto.g.dart';

/// DTO representing a paginated response of properties from the API.
///
/// API payload example:
/// {
///   "items": [ { property }, { property } ],
///   "total": 123,
///   "page": 0,
///   "page_size": 20
/// }
///
/// Purpose:
/// - Encapsulate server-side pagination metadata along with property DTOs.
@freezed
class PropertyListDto with _$PropertyListDto {
  const factory PropertyListDto({
    @Default(<PropertyDto>[]) List<PropertyDto> items,
    int? total,
    int? page,
    @JsonKey(name: 'page_size') int? pageSize,
  }) = _PropertyListDto;

  factory PropertyListDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyListDtoFromJson(json);
}
