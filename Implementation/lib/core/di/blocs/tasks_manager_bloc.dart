part of '../init_dependencies.imports.dart';

void _tasksManagerBloc() {
  _tasksManagerDataSoruces();
  _tasksManagerRepositories();
  _tasksManagerUseCases();
  serviceLocator.registerLazySingleton<TasksManagerBloc>(
    () => TasksManagerBloc(
      createTaskUseCase: serviceLocator(),
      createSubTaskUseCase: serviceLocator(),
      deleteTaskUseCase: serviceLocator(),
      deleteSubTaskUseCase: serviceLocator(),
      deleteSubTasksByTaskIdUseCase: serviceLocator(),
      updateTaskUseCase: serviceLocator(),
      updateSubTaskUseCase: serviceLocator(),
      getSubTasksUseCase: serviceLocator(),
      getTasksUseCase: serviceLocator(),
    ),
  );
}

void _tasksManagerUseCases() {
  serviceLocator

    // Task
    ..registerFactory(() => CreateTaskUseCase(serviceLocator()))
    ..registerFactory(() => DeleteTaskUseCase(serviceLocator()))
    ..registerFactory(() => GetTasksUseCase(serviceLocator()))
    ..registerFactory(() => UpdateTaskUseCase(serviceLocator()))

    // SubTask
    ..registerFactory(() => CreateSubTaskUseCase(serviceLocator()))
    ..registerFactory(() => DeleteSubTaskUseCase(serviceLocator()))
    ..registerFactory(() => DeleteBatchSubTasksByTaskIdUseCase(serviceLocator()))
    ..registerFactory(() => GetSubTasksByTaskIdsUseCase(serviceLocator()))
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
        collectionPath: CollectionPaths.tasks,
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
        collectionPath: CollectionPaths.subTasks,
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
