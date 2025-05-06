part of 'init_dependencies.imports.dart';

void _taskManagerBloc() {
  _taskManagerDataSoruces();
  _taskManagerRepositories();
  _taskMangerUsecases();
  serviceLocator

    // Category
    ..registerFactory(() => CreateBatchCategoriesUsecase(serviceLocator()))

    // TasksManager
    ..registerLazySingleton<TasksManagerBloc>(
      () => TasksManagerBloc(
        createTaskUsecase: serviceLocator(),
        createSubTaskUsecase: serviceLocator(),
        getBatchSubTasksUsecase: serviceLocator(),
        getBatchTasksUsecase: serviceLocator(),
        subTaskVMMapper: serviceLocator(),
        taskVMMapper: serviceLocator(),
      ),
    );
}

void _taskMangerUsecases() {
  serviceLocator

    // Task
    ..registerFactory(() => CreateTaskUsecase(serviceLocator()))
    ..registerFactory(() => GetBatchTasksUsecase(serviceLocator()))

    // SubTask
    ..registerFactory(() => CreateSubTaskUsecase(serviceLocator()))
    ..registerFactory(() => GetBatchSubTasksByIdsUsecase(serviceLocator()));
}

void _taskManagerDataSoruces() {
  serviceLocator

    // Task
    ..registerFactory<TaskLocalDataSource<TaskHiveModel>>(
      () => TaskHiveDataSourceImpl(hiveBox: serviceLocator()),
    )
    ..registerFactory<SupabaseDataSource<TaskSupabaseModel, TaskDataMapper>>(
      () => TaskSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.task,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    )

    // Sub Task
    ..registerFactory<SubTaskLocalDataSource<SubTaskHiveModel>>(
      () => SubTaskHiveDataSourceImpl(hiveBox: serviceLocator()),
    )
    ..registerFactory<SupabaseDataSource<SubTaskSupabaseModel, SubTaskDataMapper>>(
      () => SubTaskSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.subTask,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    );
}

void _taskManagerRepositories() {
  serviceLocator
    // Task
    ..registerSingleton<TaskRepository>(
      TaskRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<TaskDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Sub Task
    ..registerSingleton<SubTaskRepository>(
      SubTaskRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<SubTaskDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    );
}
