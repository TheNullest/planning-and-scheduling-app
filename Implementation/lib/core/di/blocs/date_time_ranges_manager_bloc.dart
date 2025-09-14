part of '../init_dependencies.imports.dart';

void _dateTimeRangesManagerBloc() {
  serviceLocator
    // Data Sources for TimeRange
    ..registerFactory<TimeRangeLocalDataSource<TimeRangeHiveModel>>(
      TimeRangeHiveDataSourceImpl.new,
    )
    ..registerFactory<SupabaseDataSource<TimeRangeSupabaseModel, TimeRangeDataMapper>>(
      () => TimeRangeSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.timeRanges,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    )

    // Data Sources for DateRange
    ..registerFactory<DateRangeLocalDataSource<DateRangeHiveModel>>(
      DateRangeHiveDataSourceImpl.new,
    )
    ..registerFactory<SupabaseDataSource<DateRangeSupabaseModel, DateRangeDataMapper>>(
      () => DateRangeSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.dateRanges,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    )

    // Repositories for TimeRange
    ..registerSingleton<TimeRangeRepository>(
      TimeRangeRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Repositories for DateRange
    ..registerSingleton<DateRangeRepository>(
      DateRangeRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // UseCases for TimeRange
    ..registerFactory(() => CreateBatchTimeRangesUseCase(serviceLocator()))
    ..registerFactory(() => DeleteBatchTimeRangesUseCase(serviceLocator()))
    ..registerFactory(() => GetBatchAllTimeRangesUseCase(serviceLocator()))
    ..registerFactory(() => GetBatchTimeRangesByTaskIdUseCase(serviceLocator()))
    ..registerFactory(() => UpdateTimeRangesUseCase(serviceLocator()))

    // UseCases for DateRange
    ..registerFactory(() => CreateBatchDateRangesUseCase(serviceLocator()))
    ..registerFactory(() => DeleteBatchDateRangesUseCase(serviceLocator()))
    ..registerFactory(() => GetBatchAllDateRangesUseCase(serviceLocator()))
    ..registerFactory(() => GetBatchDateRangesByTaskIdUseCase(serviceLocator()))
    ..registerFactory(() => UpdateDateRangesUseCase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton<ConstraintDateTimeRangesManagerBloc>(
      () => ConstraintDateTimeRangesManagerBloc(
        // Time Range Prameters
        createBatchTimeRangesUseCase: serviceLocator(),
        deleteTimeRangesUseCase: serviceLocator(),
        getTimeRangesUseCase: serviceLocator(),
        getTimeRangesByTaskIdUseCase: serviceLocator(),
        updateTimeRangesUseCase: serviceLocator(),

        // Date Range Prameters
        createBatchDateRangesUseCase: serviceLocator(),
        deleteDateRangesUseCase: serviceLocator(),
        getDateRangesUseCase: serviceLocator(),
        getDateRangesByTaskIdUseCase: serviceLocator(),
        updateDateRangesUseCase: serviceLocator(),
      ),
    );
}
