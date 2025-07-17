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
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // UseCases
    ..registerFactory(() => CreateCategoryUseCase(serviceLocator()))
    ..registerFactory(() => DeleteCategoryUseCase(serviceLocator()))
    ..registerFactory(() => FetchAllCategoriesUseCase(serviceLocator()))
    ..registerFactory(() => UpdateCategoryUseCase(serviceLocator()))

    // CategoriesManagerBloc
    ..registerLazySingleton<CategoriesManagerBloc>(
      () => CategoriesManagerBloc(
        createUseCase: serviceLocator(),
        fetchAllUseCase: serviceLocator(),
        deleteUseCase: serviceLocator(),
        updateUseCase: serviceLocator(),
      ),
    );
}
