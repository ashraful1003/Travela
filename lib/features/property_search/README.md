Property Search feature — scaffold

This README describes the expected structure for the `property_search` feature used as a template for new features.

Folders and files (non-functional placeholders):

- presentation/
  - bloc/
    - property_search_bloc.dart (Bloc/Cubit placeholder)
  - pages/
    - property_search_page.dart (Top-level page/screen placeholder)
  - widgets/
    - property_search_view.dart (Main view placeholder)

- domain/
  - entities/
    - property.dart (Entity placeholder)
  - repositories/
    - property_repository.dart (Repository interface placeholder)
  - usecases/
    - search_properties.dart (Use case placeholder)

- data/
  - models/
    - property_model.dart (DTO placeholder)
  - datasources/
    - property_remote_data_source.dart (Remote data source placeholder)
  - repositories/
    - property_repository_impl.dart (Repository implementation placeholder)
  - mappers/
    - property_mapper.dart (Mapping helpers placeholder)

- di/
  - init_property_search_di.dart (Feature DI registration placeholder)

Guidelines
- Keep this feature small and self-contained.
- Follow the project `ENGINEERING_GUIDELINES.md` for naming, DI, and testing.

