part of '../init_dependencies.imports.dart';

void _tasksManagerBloc() {
  _tasksManagerDataSoruces();
  _tasksManagerRepositories();
  _tasksMangerUsecases();
  serviceLocator

    // Category
    ..registerFactory(() => CreateBatchCategoriesUsecase(serviceLocator()))

    // TasksManager
    ..registerLazySingleton<TasksManagerBloc>(
      () => TasksManagerBloc(
        createTaskUsecase: serviceLocator(),
        createSubTaskUsecase: serviceLocator(),
        deleteTaskUsecase: serviceLocator(),
        deleteSubTaskUsecase: serviceLocator(),
        deleteBatchSubTasksByTaskIdUsecase: serviceLocator(),
        updateTaskUsecase: serviceLocator(),
        updateSubTaskUsecase: serviceLocator(),
        getBatchSubTasksUsecase: serviceLocator(),
        getBatchTasksUsecase: serviceLocator(),
      ),
    );
}

void _tasksMangerUsecases() {
  serviceLocator

    // Task
    ..registerFactory(() => CreateTaskUsecase(serviceLocator()))
    ..registerFactory(() => DeleteTaskUsecase(serviceLocator()))
    ..registerFactory(() => GetBatchTasksUsecase(serviceLocator()))
    ..registerFactory(() => UpdateTaskUsecase(serviceLocator()))

    // SubTask
    ..registerFactory(() => CreateSubTaskUsecase(serviceLocator()))
    ..registerFactory(() => DeleteSubTaskUsecase(serviceLocator()))
    ..registerFactory(() => DeleteBatchSubTasksByTaskIdUsecase(serviceLocator()))
    ..registerFactory(() => GetBatchSubTasksByTaskIdsUsecase(serviceLocator()))
    ..registerFactory(() => UpdateSubTaskUsecase(serviceLocator()));
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
