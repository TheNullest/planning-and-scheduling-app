part of '../init_dependencies.imports.dart';

void _tasksManagerBloc() {
  _tasksManagerDataSoruces();
  _tasksManagerRepositories();
  _tasksManagerUseCases();
  serviceLocator

    // Category
    ..registerFactory(() => CreateBatchCategoriesUseCase(serviceLocator()))

    // TasksManager
    ..registerLazySingleton<TasksManagerBloc>(
      () => TasksManagerBloc(
        createTaskUseCase: serviceLocator(),
        createSubTaskUseCase: serviceLocator(),
        deleteTaskUseCase: serviceLocator(),
        deleteSubTaskUseCase: serviceLocator(),
        deleteBatchSubTasksByTaskIdUseCase: serviceLocator(),
        updateTaskUseCase: serviceLocator(),
        updateSubTaskUseCase: serviceLocator(),
        getBatchSubTasksUseCase: serviceLocator(),
        getBatchTasksUseCase: serviceLocator(),
      ),
    );
}

void _tasksManagerUseCases() {
  serviceLocator

    // Task
    ..registerFactory(() => CreateTaskUseCase(serviceLocator()))
    ..registerFactory(() => DeleteTaskUseCase(serviceLocator()))
    ..registerFactory(() => GetBatchTasksUseCase(serviceLocator()))
    ..registerFactory(() => UpdateTaskUseCase(serviceLocator()))

    // SubTask
    ..registerFactory(() => CreateSubTaskUseCase(serviceLocator()))
    ..registerFactory(() => DeleteSubTaskUseCase(serviceLocator()))
    ..registerFactory(() => DeleteBatchSubTasksByTaskIdUseCase(serviceLocator()))
    ..registerFactory(() => GetBatchSubTasksByTaskIdsUseCase(serviceLocator()))
    ..registerFactory(() => UpdateSubTaskUseCase(serviceLocator()));
}

void _tasksManagerDataSoruces() {
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

void _tasksManagerRepositories() {
  serviceLocator
    // Task
    ..registerSingleton<TaskRepository>(
      TaskRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Sub Task
    ..registerSingleton<SubTaskRepository>(
      SubTaskRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    );
}
