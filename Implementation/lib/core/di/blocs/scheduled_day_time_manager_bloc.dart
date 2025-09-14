part of '../init_dependencies.imports.dart';

void _scheduledDayTimesManagerBloc() {
  serviceLocator
    // Data Sources
    ..registerFactory<ScheduledDayTimeLocalDataSource<ScheduledDayTimeHiveModel>>(
      ScheduledDayTimeHiveDataSourceImpl.new,
    )
    ..registerFactory<
        SupabaseDataSource<ScheduledDayTimeSupabaseModel, ScheduledDayTimeDataMapper>>(
      () => ScheduledDayTimeSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.scheduledDayTimes,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    )

    // Repositories
    ..registerSingleton<ScheduledDayTimeRepository>(
      ScheduledDayTimeRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // UseCases
    ..registerFactory(() => GetScheduledDayTimesUseCase(serviceLocator()))
    ..registerFactory(() => GetScheduledDayTimesByTaskIdUseCase(serviceLocator()))
    ..registerFactory(() => CreateBatchScheduledDayTimesUseCase(serviceLocator()))
    ..registerFactory(() => DeleteBatchScheduledDayTimesUseCase(serviceLocator()))
    ..registerFactory(() => UpdateScheduledDayTimesUseCase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton(
      () => ScheduledDayTimesManagerBloc(
        createBatch: serviceLocator(),
        get: serviceLocator(),
        getByTaskId: serviceLocator(),
        update: serviceLocator(),
        delete: serviceLocator(),
      ),
    );
}
