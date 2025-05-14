part of 'init_dependencies.imports.dart';

void _datasources() {
  serviceLocator
      // Category
      // ..registerFactory<CategoryLocalDataSource<CategoryHiveModel>>(
      //   CategoryHiveDataSourceImpl.new,
      // )
      // ..registerFactory<SupabaseDataSource<CategorySupabaseModel, CategoryDataMapper>>(
      //   () => CategorySupabaseDataSourceImpl(
      //     dataMapper: serviceLocator(),
      //     client: serviceLocator(),
      //     collectionPath: CollectionPaths.category,
      //     defaultPagination: const PaginationOptions(),
      //   ),
      // )

      // // Goal
      // ..registerFactory<GoalLocalDataSource<GoalHiveModel>>(
      //   () => GoalHiveDataSourceImpl(hiveBox: serviceLocator()),
      // )
      // ..registerFactory<SupabaseDataSource<GoalSupabaseModel, GoalDataMapper>>(
      //   () => GoalSupabaseDataSourceImpl(
      //     client: serviceLocator(),
      //     collectionPath: CollectionPaths.goal,
      //     dataMapper: serviceLocator(),
      //     defaultPagination: const PaginationOptions(),
      //   ),
      // )

      // // Measurement Unit
      // ..registerFactory<CustomMeasurementUnitLocalDataSource<CustomMeasurementUnitHiveModel>>(
      //   () => CustomeMeasurementUnitHiveDataSourceImpl(hiveBox: serviceLocator()),
      // )
      // ..registerFactory<
      //     SupabaseDataSource<CustomMeasurementUnitSupabaseModel, CustomMeasurementUnitDataMapper>>(
      //   () => CustomMeasurementUnitSupabaseDataSourceImpl(
      //     client: serviceLocator(),
      //     collectionPath: CollectionPaths.customeCustomeMeasurementUnit,
      //     dataMapper: serviceLocator(),
      //     defaultPagination: const PaginationOptions(),
      //   ),
      // )

      // // Scheduled Task
      // ..registerFactory<ScheduleConstraintLocalDataSource<ScheduleConstraintHiveModel>>(
      //   () => ScheduleDefinitionHiveDataSourceImpl(hiveBox: serviceLocator()),
      // )
      // ..registerFactory<
      //     SupabaseDataSource<ScheduleConstraintSupabaseModel, ScheduleConstraintDataMapper>>(
      //   () => ScheduleDefinitionSupabaseDataSourceImpl(
      //     client: serviceLocator(),
      //     collectionPath: CollectionPaths.scheduleConstraints,
      //     dataMapper: serviceLocator(),
      //     defaultPagination: const PaginationOptions(),
      //   ),
      // )

      // // Tag
      // ..registerFactory<TagLocalDataSource<TagHiveModel>>(
      //   () => TagHiveDataSourceImpl(hiveBox: serviceLocator()),
      // )
      // ..registerFactory<SupabaseDataSource<TagSupabaseModel, TagDataMapper>>(
      //   () => TagSupabaseDataSourceImpl(
      //     client: serviceLocator(),
      //     collectionPath: CollectionPaths.tag,
      //     dataMapper: serviceLocator(),
      //     defaultPagination: const PaginationOptions(),
      //   ),
      // )

      // // Task Activity
      // ..registerFactory<TaskActivityLocalDataSource<TaskActivityHiveModel>>(
      //   () => TaskActivityHiveDataSourceImpl(hiveBox: serviceLocator()),
      // )
      // ..registerFactory<SupabaseDataSource<TaskActivitySupabaseModel, TaskActivityDataMapper>>(
      //   () => TaskActivitySupabaseDataSourceImpl(
      //     client: serviceLocator(),
      //     collectionPath: CollectionPaths.taskActivity,
      //     dataMapper: serviceLocator(),
      //     defaultPagination: const PaginationOptions(),
      //   ),
      // )

      // // Device
      // ..registerFactory<DeviceDataSource<DeviceHiveModel>>(
      //   () => DeviceHiveDataSourceImpl(serviceLocator()),
      //   instanceName: GetItInstanceNames.localHive,
      // )
      // ..registerFactory<DeviceDataSource<DeviceSupabaseModel>>(
      //   () => DeviceSupabaseDataSourceImpl(
      //     serviceLocator(),
      //   ),
      //   instanceName: GetItInstanceNames.remoteSupabase,
      // )

      // // Log
      // ..registerFactory<LogDataSource<LogHiveModel>>(
      //   () => LogHiveDataSourceImpl(serviceLocator()),
      //   instanceName: GetItInstanceNames.localHive,
      // )
      // ..registerFactory<LogDataSource<LogSupabaseModel>>(
      //   () => LogSupabaseDataSourceImpl(
      //     serviceLocator(),
      //   ),
      //   instanceName: GetItInstanceNames.remoteSupabase,
      // )

      // // SyncLog : Only Remote and Supabase
      // ..registerFactory<SyncLogDataSource<SyncLogSupabaseModel>>(
      //   () => SyncLogSupabaseDataSourceImpl(
      //     serviceLocator(),
      //   ),
      // )
      ;
}
