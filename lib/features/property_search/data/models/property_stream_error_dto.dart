import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_stream_error_dto.freezed.dart';
part 'property_stream_error_dto.g.dart';

@freezed
class PropertyStreamErrorDto with _$PropertyStreamErrorDto {
  const factory PropertyStreamErrorDto({required String message, int? code}) =
      _PropertyStreamErrorDto;

  factory PropertyStreamErrorDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyStreamErrorDtoFromJson(json);
}
