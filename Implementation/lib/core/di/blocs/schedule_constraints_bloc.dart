part of '../init_dependencies.imports.dart';

void _scheduleConstraints() {
  serviceLocator
    // Data Sources
    ..registerFactory<ScheduleConstraintsLocalDataSource<ScheduleConstraintsHiveModel>>(
      ScheduleConstraintsHiveDataSourceImpl.new,
    )
    ..registerFactory<
        SupabaseDataSource<ScheduleConstraintsSupabaseModel, ScheduleConstraintsDataMapper>>(
      () => ScheduleConstraintsSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.task,
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
    ..registerFactory(() => FetchBatchScheduleCosntraintsListUseCase(serviceLocator()))
    ..registerFactory(() => CreateScheduleConstraintsUseCase(serviceLocator()))
    ..registerFactory(() => DeleteScheduleConstraintsUseCase(serviceLocator()))
    ..registerFactory(() => UpdateScheduleConstraintsUseCase(serviceLocator()))
    ..registerFactory(() => FetchScheduleConstraintUseCase(serviceLocator()))
    ..registerFactory(() => FetchScheduleConstriantsByTaskIdUseCase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton<ScheduleConstraintsManagerBloc>(
      () => ScheduleConstraintsManagerBloc(
        create: serviceLocator(),
        fetchByTaskId: serviceLocator(),
        fetchBatchConstraintsList: serviceLocator(),
        update: serviceLocator(),
        delete: serviceLocator(),
      ),
    );
}
