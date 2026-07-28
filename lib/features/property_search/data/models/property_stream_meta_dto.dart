// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_stream_meta_dto.freezed.dart';
part 'property_stream_meta_dto.g.dart';

@freezed
class PropertyStreamMetaDto with _$PropertyStreamMetaDto {
  const factory PropertyStreamMetaDto({
    @JsonKey(name: 'search_id') required String searchId,
    @JsonKey(name: 'estimated_total') int? estimatedTotal,
    String? timestamp,
  }) = _PropertyStreamMetaDto;

  factory PropertyStreamMetaDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyStreamMetaDtoFromJson(json);
}
