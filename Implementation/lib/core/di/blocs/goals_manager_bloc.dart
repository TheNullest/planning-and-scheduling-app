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
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // UseCases
    ..registerFactory(() => CreateGoalUseCase(serviceLocator()))
    ..registerFactory(() => DeleteGoalUseCase(serviceLocator()))
    ..registerFactory(() => FetchGoalsByRefsUseCase(serviceLocator()))
    ..registerFactory(() => UpdateGoalUseCase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton<GoalsManagerBloc>(
      () => GoalsManagerBloc(
        createUseCase: serviceLocator(),
        fetchGoalsByRefsUseCase: serviceLocator(),
        deleteUseCase: serviceLocator(),
        updateUseCase: serviceLocator(),
      ),
    );
}
