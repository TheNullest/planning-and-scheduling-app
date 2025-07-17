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
        dataMapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // UseCases
    ..registerFactory(() => CreateTagUseCase(serviceLocator()))
    ..registerFactory(() => DeleteTagUseCase(serviceLocator()))
    ..registerFactory(() => FetchAllTagsUseCase(serviceLocator()))
    ..registerFactory(() => UpdateTagUseCase(serviceLocator()))

    // ManagerBloc
    ..registerLazySingleton<TagsManagerBloc>(
      () => TagsManagerBloc(
        createUseCase: serviceLocator(),
        fetchAllUseCase: serviceLocator(),
        deleteUseCase: serviceLocator(),
        updateUseCase: serviceLocator(),
      ),
    );
}
