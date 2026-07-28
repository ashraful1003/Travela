import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travela/features/property_search/data/models/property_dto.dart';

part 'property_stream_item_dto.freezed.dart';
part 'property_stream_item_dto.g.dart';

@freezed
class PropertyStreamItemDto with _$PropertyStreamItemDto {
  const factory PropertyStreamItemDto({required PropertyDto property}) =
      _PropertyStreamItemDto;

  factory PropertyStreamItemDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyStreamItemDtoFromJson(json);
}
