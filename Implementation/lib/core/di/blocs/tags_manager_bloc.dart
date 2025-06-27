part of '../init_dependencies.imports.dart';

void _tagsManagerBloc() {
  serviceLocator
    // Data Sources
    ..registerFactory<TagLocalDataSource<TagHiveModel>>(
      TagHiveDataSourceImpl.new,
    )
    ..registerFactory<SupabaseDataSource<TagSupabaseModel, TagDataMapper>>(
      () => TagSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.task,
        dataMapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
    )

    // Repositories
    ..registerSingleton<TagRepository>(
      TagRepositoryImpl(
        localDataSource: serviceLocator(),
        remoteDataSource: serviceLocator(),
        dataMapper: serviceLocator<TagDataMapper>(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Usecases
    ..registerFactory(() => CreateTagUsecase(serviceLocator()))
    ..registerFactory(() => DeleteTagUsecase(serviceLocator()))
    ..registerFactory(() => FetchAllTagsUsecase(serviceLocator()))
    ..registerFactory(() => UpdateTagUsecase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton<TagsManagerBloc>(
      () => TagsManagerBloc(
        createUsecase: serviceLocator(),
        fetchAllUsecase: serviceLocator(),
        deleteUsecase: serviceLocator(),
        updateUsecase: serviceLocator(),
      ),
    );
}
