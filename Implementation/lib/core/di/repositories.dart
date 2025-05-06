part of 'init_dependencies.imports.dart';

void _repositories() {
  serviceLocator

    // Goal
    ..registerSingleton<GoalRepository>(
      GoalRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<GoalDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Category
    ..registerSingleton<CategoryRepository>(
      CategoryRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<CategoryDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Measurement Unit
    ..registerSingleton<CustomMeasurementUnitRepository>(
      CustomMeasurementUnitRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<CustomMeasurementUnitDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Schedulers
    ..registerSingleton<ScheduleConstraintRepository>(
      ScheduleConstraintRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<ScheduleConstraintDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Tag
    ..registerSingleton<TagRepository>(
      TagRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<TagDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Task Activity
    ..registerSingleton<TaskActivityRepository>(
      TaskActivityRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<TaskActivityDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    );
}
