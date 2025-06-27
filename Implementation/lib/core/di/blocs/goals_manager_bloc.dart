part of '../init_dependencies.imports.dart';

void _goalsManagerBloc() {
  serviceLocator
    // Data Sources
    ..registerFactory<GoalLocalDataSource<GoalHiveModel>>(
      GoalHiveDataSourceImpl.new,
    )
    ..registerFactory<SupabaseDataSource<GoalSupabaseModel, GoalDataMapper>>(
      () => GoalSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.task,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    )

    // Repositories
    ..registerSingleton<GoalRepository>(
      GoalRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<GoalDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Usecases
    ..registerFactory(() => CreateGoalUsecase(serviceLocator()))
    ..registerFactory(() => DeleteGoalUsecase(serviceLocator()))
    ..registerFactory(() => FetchGoalsByRefsUsecase(serviceLocator()))
    ..registerFactory(() => UpdateGoalUsecase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton<GoalsManagerBloc>(
      () => GoalsManagerBloc(
        createUsecase: serviceLocator(),
        fetchGoalsByRefsUsecase: serviceLocator(),
        deleteUsecase: serviceLocator(),
        updateUsecase: serviceLocator(),
      ),
    );
}
