import 'package:travela/features/property_search/data/models/popular_location_dto.dart';
import 'package:travela/features/property_search/domain/entities/selected_location.dart';

extension PopularLocationDtoMapper on PopularLocationDto {
  SelectedLocation toEntity() => SelectedLocation(
        id: id,
        name: name,
        lat: lat,
        lng: lng,
        within: within,
        tier1: tier1,
        tier2: tier2,
      );
}

