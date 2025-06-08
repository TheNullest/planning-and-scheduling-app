part of '../init_dependencies.imports.dart';

void _categoriesManagerBloc() {
  serviceLocator
    // Data Sources
    ..registerFactory<CategoryLocalDataSource<CategoryHiveModel>>(
      CategoryHiveDataSourceImpl.new,
    )
    ..registerFactory<SupabaseDataSource<CategorySupabaseModel, CategoryDataMapper>>(
      () => CategorySupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.task,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    )

    // Repositories
    ..registerSingleton<CategoryRepository>(
      CategoryRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<CategoryDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Usecases
    ..registerFactory(() => CreateCategoryUsecase(serviceLocator()))
    ..registerFactory(() => DeleteCategoryUsecase(serviceLocator()))
    ..registerFactory(() => FetchAllCategoriesUsecase(serviceLocator()))
    ..registerFactory(() => UpdateCategoryUsecase(serviceLocator()))

    // CategoriesManagerBloc
    ..registerLazySingleton<CategoriesManagerBloc>(
      () => CategoriesManagerBloc(
        createUsecase: serviceLocator(),
        fetchAllUsecase: serviceLocator(),
        deleteUsecase: serviceLocator(),
        updateUsecase: serviceLocator(),
      ),
    );
}
