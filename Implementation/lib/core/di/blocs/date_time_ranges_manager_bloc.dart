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
        collectionPath: CollectionPaths.task,
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
        collectionPath: CollectionPaths.task,
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
    ..registerFactory(() => FetchBatchAllTimeRangesUseCase(serviceLocator()))
    ..registerFactory(() => FetchBatchTimeRangesByIdsUseCase(serviceLocator()))
    ..registerFactory(() => UpdateBatchTimeRangesUseCase(serviceLocator()))

    // UseCases for DateRange
    ..registerFactory(() => CreateBatchDateRangesUseCase(serviceLocator()))
    ..registerFactory(() => DeleteBatchDateRangesUseCase(serviceLocator()))
    ..registerFactory(() => FetchBatchAllDateRangesUseCase(serviceLocator()))
    ..registerFactory(() => FetchBatchDateRangesByIdsUseCase(serviceLocator()))
    ..registerFactory(() => UpdateBatchDateRangesUseCase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton<DateTimeRangesManagerBloc>(
      () => DateTimeRangesManagerBloc(
        // Time Range Prameters
        createBatchTimeRangesUseCase: serviceLocator(),
        deleteBatchTimeRangesUseCase: serviceLocator(),
        fetchBatchAllTimeRangesUseCase: serviceLocator(),
        fetchBatchTimeRangesByIdsUseCase: serviceLocator(),
        updateBatchTimeRangesUseCase: serviceLocator(),

        // Date Range Prameters
        createBatchDateRangesUseCase: serviceLocator(),
        deleteBatchDateRangesUseCase: serviceLocator(),
        fetchBatchAllDateRangesUseCase: serviceLocator(),
        fetchBatchDateRangesByIdsUseCase: serviceLocator(),
        updateBatchDateRangesUseCase: serviceLocator(),
      ),
    );
}
