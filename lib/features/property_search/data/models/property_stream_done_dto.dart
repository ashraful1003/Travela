import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_stream_done_dto.freezed.dart';
part 'property_stream_done_dto.g.dart';

@freezed
class PropertyStreamDoneDto with _$PropertyStreamDoneDto {
  const factory PropertyStreamDoneDto({String? reason}) =
      _PropertyStreamDoneDto;

  factory PropertyStreamDoneDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyStreamDoneDtoFromJson(json);
}
