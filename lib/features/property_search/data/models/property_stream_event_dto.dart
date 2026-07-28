import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:travela/features/property_search/data/models/property_stream_done_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_error_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_item_dto.dart';
import 'package:travela/features/property_search/data/models/property_stream_meta_dto.dart';

part 'property_stream_event_dto.freezed.dart';
part 'property_stream_event_dto.g.dart';

@freezed
class PropertyStreamEventDto with _$PropertyStreamEventDto {
  const factory PropertyStreamEventDto.metadata(PropertyStreamMetaDto meta) =
      PropertyStreamEventMetaDto;

  const factory PropertyStreamEventDto.item(PropertyStreamItemDto item) =
      PropertyStreamEventItemDto;

  const factory PropertyStreamEventDto.done(PropertyStreamDoneDto done) =
      PropertyStreamEventDoneDto;

  const factory PropertyStreamEventDto.error(PropertyStreamErrorDto error) =
      PropertyStreamEventErrorDto;

  factory PropertyStreamEventDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyStreamEventDtoFromJson(json);
}
