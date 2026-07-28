import 'package:get_it/get_it.dart';
import 'package:travela/core/network/api_client.dart';
import 'package:travela/features/property_search/data/datasources/property_remote_data_source.dart';
import 'package:travela/features/property_search/data/datasources/property_remote_data_source_impl.dart';
import 'package:travela/features/property_search/data/repositories/property_repository_impl.dart';
import 'package:travela/features/property_search/domain/repositories/property_repository.dart';

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

  if (!sl.isRegistered<PropertyRepository>()) {
    sl.registerLazySingleton<PropertyRepository>(
      () => PropertyRepositoryImpl(sl.get<PropertyRemoteDataSource>()),
    );
  }
}
