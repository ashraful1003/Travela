// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_stream_meta_dto.freezed.dart';
part 'property_stream_meta_dto.g.dart';

/// Pagination block nested inside the `meta` SSE event.
@freezed
class PropertyStreamPaginationDto with _$PropertyStreamPaginationDto {
  const factory PropertyStreamPaginationDto({
    int? page,
    int? limit,
    @JsonKey(name: 'total_count') int? totalCount,
    int? next,
    @JsonKey(name: 'total_page') int? totalPage,
  }) = _PropertyStreamPaginationDto;

  factory PropertyStreamPaginationDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyStreamPaginationDtoFromJson(json);
}

/// DTO for the single `meta` SSE event that opens a search stream.
///
/// `filter_meta` is intentionally not modeled: its shape depends on the
/// selected location/filters and is not needed for the required UI (it would
/// only matter for building a dynamic filter picker, which is out of scope).
/// Unknown keys are ignored by json_serializable's generated `fromJson`.
@freezed
class PropertyStreamMetaDto with _$PropertyStreamMetaDto {
  const factory PropertyStreamMetaDto({
    @JsonKey(name: 'total_count') required int totalCount,
    PropertyStreamPaginationDto? pagination,
  }) = _PropertyStreamMetaDto;

  factory PropertyStreamMetaDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyStreamMetaDtoFromJson(json);
}
