part of '../init_dependencies.imports.dart';

void _scheduledOccurrencesManagerBloc() {
  serviceLocator
    // Data Sources
    ..registerFactory<ScheduledOccurrenceLocalDataSource<ScheduledOccurrenceHiveModel>>(
      ScheduledOccurrenceHiveDataSourceImpl.new,
    )
    ..registerFactory<
        SupabaseDataSource<ScheduledOccurrenceSupabaseModel, ScheduledOccurrenceDataMapper>>(
      () => ScheduledOccurrenceSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.scheduledOccurrences,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    )

    // Repositories
    ..registerSingleton<ScheduledOccurrenceRepository>(
      ScheduledOccurrenceRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // UseCases
    ..registerFactory(() => GetScheduledOccurrencesByTaskIdUseCase(serviceLocator()))
    ..registerFactory(() => GetScheduledOccurrencesByDateUseCase(serviceLocator()))
    ..registerFactory(() => GetScheduledOccurrencesBySchedulerIdsUseCase(serviceLocator()))
    ..registerFactory(() => GetUpcomingScheduledOccurrencesByTaskIdUseCase(serviceLocator()))
    ..registerFactory(() => CreateBatchScheduledOccurrencesUseCase(serviceLocator()))
    ..registerFactory(() => DeleteBatchScheduledOccurrencesUseCase(serviceLocator()))
    ..registerFactory(() => DeleteBatchScheduledOccurrencesByTaskIdUseCase(serviceLocator()))
    ..registerFactory(() => DeleteBatchScheduledOccurrencesBySchedulerIdsUseCase(serviceLocator()))
    ..registerFactory(() => UpdateBatchScheduledOccurrencesUseCase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton(
      () => ScheduledOccurrencesManagerBloc(
        createBatch: serviceLocator(),
        getByDate: serviceLocator(),
        getByTaskId: serviceLocator(),
        getBySchedulerIds: serviceLocator(),
        getUpcomingByTaskId: serviceLocator(),
        updateBatch: serviceLocator(),
        deleteBatch: serviceLocator(),
        deleteBatchBySchedulerIds: serviceLocator(),
        deleteBatchByTaskId: serviceLocator(),
      ),
    );
}
