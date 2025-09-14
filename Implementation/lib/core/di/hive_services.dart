part of 'init_dependencies.imports.dart';

void _hiveServices() {
  serviceLocator

    // Register FlutterSecureStorage
    ..registerSingleton<FlutterSecureStorageWrapper>(FlutterSecureStorageWrapperImpl())

    // Register HiveEncryptionService (singleton to cache the key)
    ..registerSingleton<HiveEncryptionService>(
      HiveEncryptionServiceImpl(serviceLocator<FlutterSecureStorageWrapper>()),
    )

    // Initialize
    ..registerSingleton<HiveWrapper>(HiveWarapperImpl())
    ..registerSingleton<PlatformWrapper>(PlatformWrapperImpl())
    ..registerSingleton<PathProviderWrapper>(PathProviderWrapperImpl())
    ..registerSingleton<DirectoryWrapper>(DirectoryWrapperImpl())
    ..registerSingleton<HiveInitializer>(
      HiveInitializerImpl(
        hive: serviceLocator<HiveWrapper>(),
        platform: serviceLocator<PlatformWrapper>(),
        pathProvider: serviceLocator<PathProviderWrapper>(),
        directory: serviceLocator<DirectoryWrapper>(),
      ),
    );

  _hiveBoxRunner();
}

void _hiveBoxRunner() {
  serviceLocator
    // Models
    ..registerFactory<HiveBoxRunner<RemoteSessionHiveModel>>(
      () => HiveBoxRunnerImpl<RemoteSessionHiveModel>(
        boxName: HiveBoxConstants.remoteSessionsBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<UserHiveModel>>(
      () => HiveBoxRunnerImpl<UserHiveModel>(
        boxName: HiveBoxConstants.usersBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<TaskHiveModel>>(
      () => HiveBoxRunnerImpl<TaskHiveModel>(
        boxName: HiveBoxConstants.tasksBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<SubTaskHiveModel>>(
      () => HiveBoxRunnerImpl<SubTaskHiveModel>(
        boxName: HiveBoxConstants.subTasksBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<TaskActivityHiveModel>>(
      () => HiveBoxRunnerImpl<TaskActivityHiveModel>(
        boxName: HiveBoxConstants.taskActivitysBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<CustomMeasurementUnitHiveModel>>(
      () => HiveBoxRunnerImpl<CustomMeasurementUnitHiveModel>(
        boxName: HiveBoxConstants.customMeasurementUnitsBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<CategoryHiveModel>>(
      () => HiveBoxRunnerImpl<CategoryHiveModel>(
        boxName: HiveBoxConstants.categoriesBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<TagHiveModel>>(
      () => HiveBoxRunnerImpl<TagHiveModel>(
        boxName: HiveBoxConstants.tagsBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<ScheduleConstraintsHiveModel>>(
      () => HiveBoxRunnerImpl<ScheduleConstraintsHiveModel>(
        boxName: HiveBoxConstants.scheduleConstraintsBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<ScheduledDayTimeHiveModel>>(
      () => HiveBoxRunnerImpl<ScheduledDayTimeHiveModel>(
        boxName: HiveBoxConstants.scheduledDayTimesBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<ScheduledIntervalHiveModel>>(
      () => HiveBoxRunnerImpl<ScheduledIntervalHiveModel>(
        boxName: HiveBoxConstants.scheduledIntervalsBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<ScheduledOccurrenceHiveModel>>(
      () => HiveBoxRunnerImpl<ScheduledOccurrenceHiveModel>(
        boxName: HiveBoxConstants.scheduledOccurrencesBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<GoalHiveModel>>(
      () => HiveBoxRunnerImpl<GoalHiveModel>(
        boxName: HiveBoxConstants.goalsBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<DateRangeHiveModel>>(
      () => HiveBoxRunnerImpl<DateRangeHiveModel>(
        boxName: HiveBoxConstants.dateRangesBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<TimeRangeHiveModel>>(
      () => HiveBoxRunnerImpl<TimeRangeHiveModel>(
        boxName: HiveBoxConstants.timeRangesBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<DeviceHiveModel>>(
      () => HiveBoxRunnerImpl<DeviceHiveModel>(
        boxName: HiveBoxConstants.devicesBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<SyncLogHiveModel>>(
      () => HiveBoxRunnerImpl<SyncLogHiveModel>(
        boxName: HiveBoxConstants.syncLogsBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    )
    ..registerFactory<HiveBoxRunner<LogHiveModel>>(
      () => HiveBoxRunnerImpl<LogHiveModel>(
        boxName: HiveBoxConstants.logsBox,
        hive: serviceLocator<HiveWrapper>(),
        secureStorage: serviceLocator<HiveEncryptionService>(),
      ),
    );
}
