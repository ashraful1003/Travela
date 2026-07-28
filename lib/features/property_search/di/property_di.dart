import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:travela/core/network/api_client.dart';
import 'package:travela/core/network/stream_client.dart';
import 'package:travela/core/network/stream_client_impl.dart';
import 'package:travela/features/property_search/data/datasources/location_remote_data_source.dart';
import 'package:travela/features/property_search/data/datasources/location_remote_data_source_impl.dart';
import 'package:travela/features/property_search/data/datasources/property_remote_data_source.dart';
import 'package:travela/features/property_search/data/datasources/property_remote_data_source_impl.dart';
import 'package:travela/features/property_search/data/datasources/property_stream_remote_data_source.dart';
import 'package:travela/features/property_search/data/datasources/property_stream_remote_data_source_impl.dart';
import 'package:travela/features/property_search/data/repositories/location_repository_impl.dart';
import 'package:travela/features/property_search/data/repositories/property_repository_impl.dart';
import 'package:travela/features/property_search/domain/repositories/location_repository.dart';
import 'package:travela/features/property_search/domain/repositories/property_repository.dart';
import 'package:travela/features/property_search/domain/usecases/search_locations.dart';
import 'package:travela/features/property_search/domain/usecases/search_properties.dart';
import 'package:travela/features/property_search/domain/usecases/stream_search_properties.dart';
import 'package:travela/features/property_search/presentation/bloc/location_autocomplete_bloc.dart';
import 'package:travela/features/property_search/presentation/bloc/property_search_bloc.dart';

/// Feature-level dependency registration for Property Search.
///
/// Call this from app bootstrap when the feature is required. It registers
/// the remote data source and the repository implementation.
Future<void> initPropertySearchModule(GetIt sl) async {
  if (!sl.isRegistered<PropertyRemoteDataSource>()) {
    sl.registerLazySingleton<PropertyRemoteDataSource>(
      () => PropertyRemoteDataSourceImpl(sl.get<ApiClient>()),
    );
  }

  // Stream client for SSE
  if (!sl.isRegistered<StreamClient>()) {
    sl.registerLazySingleton<StreamClient>(
      () => StreamClientImpl(sl.get<Dio>()),
    );
  }

  if (!sl.isRegistered<PropertyStreamRemoteDataSource>()) {
    sl.registerLazySingleton<PropertyStreamRemoteDataSource>(
      () => PropertyStreamRemoteDataSourceImpl(sl.get<StreamClient>()),
    );
  }

  if (!sl.isRegistered<PropertyRepository>()) {
    sl.registerLazySingleton<PropertyRepository>(
      () => PropertyRepositoryImpl(
        sl.get<PropertyRemoteDataSource>(),
        sl.get<PropertyStreamRemoteDataSource>(),
      ),
    );
  }

  // Autocomplete: remote data source + repository
  if (!sl.isRegistered<LocationRemoteDataSource>()) {
    sl.registerLazySingleton<LocationRemoteDataSource>(
      () => LocationRemoteDataSourceImpl(sl.get<ApiClient>()),
    );
  }

  if (!sl.isRegistered<LocationRepository>()) {
    sl.registerLazySingleton<LocationRepository>(
      () => LocationRepositoryImpl(sl.get<LocationRemoteDataSource>()),
    );
  }

  // Domain use cases
  if (!sl.isRegistered<SearchProperties>()) {
    sl.registerLazySingleton<SearchProperties>(
      () => SearchProperties(sl.get<PropertyRepository>()),
    );
  }

  if (!sl.isRegistered<StreamSearchProperties>()) {
    sl.registerLazySingleton<StreamSearchProperties>(
      () => StreamSearchProperties(sl.get<PropertyRepository>()),
    );
  }

  if (!sl.isRegistered<SearchLocations>()) {
    sl.registerLazySingleton<SearchLocations>(
      () => SearchLocations(sl.get<LocationRepository>()),
    );
  }

  // Domain use cases
  if (!sl.isRegistered<SearchProperties>()) {
    sl.registerLazySingleton<SearchProperties>(
      () => SearchProperties(sl.get<PropertyRepository>()),
    );
  }

  // Presentation: Blocs
  if (!sl.isRegistered<PropertySearchBloc>()) {
    sl.registerFactory<PropertySearchBloc>(
      () => PropertySearchBloc(sl.get<StreamSearchProperties>()),
    );
  }

  if (!sl.isRegistered<LocationAutocompleteBloc>()) {
    sl.registerFactory<LocationAutocompleteBloc>(
      () => LocationAutocompleteBloc(sl.get<SearchLocations>()),
    );
  }
}
