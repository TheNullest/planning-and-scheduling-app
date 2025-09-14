part of '../init_dependencies.imports.dart';

void _scheduleConstraintsManagerBloc() {
  serviceLocator
    // Data Sources
    ..registerFactory<ScheduleConstraintsLocalDataSource<ScheduleConstraintsHiveModel>>(
      ScheduleConstraintsHiveDataSourceImpl.new,
    )
    ..registerFactory<
        SupabaseDataSource<ScheduleConstraintsSupabaseModel, ScheduleConstraintsDataMapper>>(
      () => ScheduleConstraintsSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.categories,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    )

    // Repositories
    ..registerSingleton<ScheduleConstraintsRepository>(
      ScheduleConstraintsRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // UseCases
    ..registerFactory(() => GetBatchScheduleCosntraintsListUseCase(serviceLocator()))
    ..registerFactory(() => CreateScheduleConstraintsUseCase(serviceLocator()))
    ..registerFactory(() => DeleteScheduleConstraintsUseCase(serviceLocator()))
    ..registerFactory(() => UpdateScheduleConstraintsUseCase(serviceLocator()))
    ..registerFactory(() => GetScheduleConstraintsUseCase(serviceLocator()))
    ..registerFactory(() => GetScheduleConstraintsByTaskIdUseCase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton<ScheduleConstraintsManagerBloc>(
      () => ScheduleConstraintsManagerBloc(
        create: serviceLocator(),
        getByTaskId: serviceLocator(),
        getConstraintsList: serviceLocator(),
        update: serviceLocator(),
        delete: serviceLocator(),
      ),
    );
}
