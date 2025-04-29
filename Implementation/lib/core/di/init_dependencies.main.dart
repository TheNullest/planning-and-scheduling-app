part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;
Future<void> intiDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: 'secrets/.env');

  _hiveInit();
  _initAuth();
  _mappers();
  _datasources();
  _repositories();
  _usecases();
  _blocs();

  final supabase = await Supabase.initialize(
    url: SupabaseConfig.supabaseUrl,
    anonKey: SupabaseConfig.supabaseAnonKey,
  );

  serviceLocator
    ..registerSingleton(() => supabase.client)

    // core

    ..registerLazySingleton(AppUserCubit.new)
    ..registerFactory(InternetConnection.new)
    ..registerFactory(Connectivity.new)
    ..registerSingleton<NetworkConnectivityMonitor>(
      NetworkConnectivityMonitorrImpl(
        internetConnection: serviceLocator(),
        connectivity: serviceLocator(),
      ),
    )
    ..registerSingleton(
      () => NetworkConnectivityMonitorCubit(serviceLocator()),
    );

  _navigation();
}

void _mappers() {
  serviceLocator
    ..registerFactory<Mapper<CategoryEntity, CategoryHiveModel, CategorySupabaseModel>>(
      CategoryMapper.new,
    )
    ..registerFactory<Mapper<GoalEntity, GoalHiveModel, GoalSupabaseModel>>(GoalMapper.new)
    ..registerFactory<
        Mapper<CustomMeasurementUnitEntity, CustomMeasurementUnitHiveModel,
            CustomMeasurementUnitSupabaseModel>>(
      CustomeMeasurementUnitMapper.new,
    )
    ..registerFactory<Mapper<SubTaskEntity, SubTaskHiveModel, SubTaskSupabaseModel>>(
      SubTaskMapper.new,
    )
    ..registerFactory<
        Mapper<ScheduleDefinitionEntity, ScheduleDefinitionHiveModel,
            ScheduleDefinitionSupabaseModel>>(
      ScheduleDefinitionMapper.new,
    )
    ..registerFactory<Mapper<TagEntity, TagHiveModel, TagSupabaseModel>>(TagMapper.new)
    ..registerFactory<Mapper<TaskActivityEntity, TaskActivityHiveModel, TaskActivitySupabaseModel>>(
      TaskActivityMapper.new,
    )
    ..registerFactory<Mapper<TaskEntity, TaskHiveModel, TaskSupabaseModel>>(TaskMapper.new)
    ..registerFactory<Mapper<UserEntity, UserHiveModel, UserSupabaseModel>>(UserMapper.new);
}

void _hiveInit() {
  serviceLocator
    ..registerSingleton<HiveWrapper>(HiveWarapperImpl())
    ..registerSingleton<PlatformWrapper>(PlatformWrapperImpl())
    ..registerSingleton<PathProviderWrapper>(PathProviderWrapperImpl())
    ..registerSingleton<DirectoryWrapper>(DirectoryWrapperImpl())

    // Initilizers
    ..registerFactory(
      () => HiveServices<UserHiveModel>(
        hive: serviceLocator<HiveWrapper>(),
        platform: serviceLocator<PlatformWrapper>(),
        pathProvider: serviceLocator<PathProviderWrapper>(),
        directory: serviceLocator<DirectoryWrapper>(),
      ),
    );

  serviceLocator<HiveServices<UserHiveModel>>().init();
}

void _datasources() {
  serviceLocator
    // Category
    ..registerFactory<CategoryLocalDataSource<CategoryHiveModel>>(
      () => CategoryHiveDataSourceImpl(hiveBox: serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<CategoryLocalDataSource<CategorySupabaseModel>>(
      () => CategorySupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.category,
        mapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // Goal
    ..registerFactory<GoalLocalDataSource<GoalHiveModel>>(
      () => GoalHiveDataSourceImpl(hiveBox: serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<GoalLocalDataSource<GoalSupabaseModel>>(
      () => GoalSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.goal,
        mapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // Measurement Unit
    ..registerFactory<CustomeMeasurementUnitLocalDataSource<CustomMeasurementUnitHiveModel>>(
      () => CustomeMeasurementUnitHiveDataSourceImpl(hiveBox: serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<CustomeMeasurementUnitLocalDataSource<CustomMeasurementUnitSupabaseModel>>(
      () => CustomeMeasurementUnitSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.customeCustomeMeasurementUnit,
        mapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // Scheduled Task
    ..registerFactory<ScheduleDefinitionLocalDataSource<ScheduleDefinitionHiveModel>>(
      () => ScheduleDefinitionHiveDataSourceImpl(hiveBox: serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<ScheduleDefinitionLocalDataSource<ScheduleDefinitionSupabaseModel>>(
      () => ScheduleDefinitionSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.scheduleDefinition,
        mapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // Sub Task
    ..registerFactory<SubTaskLocalDataSource<SubTaskHiveModel>>(
      () => SubTaskHiveDataSourceImpl(hiveBox: serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<SubTaskLocalDataSource<SubTaskSupabaseModel>>(
      () => SubTaskSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.subTask,
        mapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // Tag
    ..registerFactory<TagLocalDataSource<TagHiveModel>>(
      () => TagHiveDataSourceImpl(hiveBox: serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<TagLocalDataSource<TagSupabaseModel>>(
      () => TagSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.tag,
        mapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // Task Activity
    ..registerFactory<TaskActivityLocalDataSource<TaskActivityHiveModel>>(
      () => TaskActivityHiveDataSourceImpl(hiveBox: serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<TaskActivityLocalDataSource<TaskActivitySupabaseModel>>(
      () => TaskActivitySupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.taskActivity,
        mapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // Task
    ..registerFactory<TaskLocalDataSource<TaskHiveModel>>(
      () => TaskHiveDataSourceImpl(hiveBox: serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<TaskLocalDataSource<TaskSupabaseModel>>(
      () => TaskSupabaseDataSourceImpl(
        client: serviceLocator(),
        collectionPath: CollectionPaths.task,
        mapper: serviceLocator(),
        defaultPagination: const PaginationOptions(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // Device
    ..registerFactory<DeviceDataSource<DeviceHiveModel>>(
      () => DeviceHiveDataSourceImpl(serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<DeviceDataSource<DeviceSupabaseModel>>(
      () => DeviceSupabaseDataSourceImpl(
        serviceLocator(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // Log
    ..registerFactory<LogDataSource<LogHiveModel>>(
      () => LogHiveDataSourceImpl(serviceLocator()),
      instanceName: InstanceNames.localHive,
    )
    ..registerFactory<LogDataSource<LogSupabaseModel>>(
      () => LogSupabaseDataSourceImpl(
        serviceLocator(),
      ),
      instanceName: InstanceNames.remoteSupabase,
    )

    // SyncLog : Only Remote and Supabase
    ..registerFactory<SyncLogDataSource<SyncLogSupabaseModel>>(
      () => SyncLogSupabaseDataSourceImpl(
        serviceLocator(),
      ),
    );
}

void _repositories() {
  serviceLocator

    // Category
    ..registerSingleton<CategoryRepository>(
      CategoryRepositoryImpl(
        localDataSource: serviceLocator(instanceName: InstanceNames.localHive),
        remoteDataSource: serviceLocator(instanceName: InstanceNames.remoteSupabase),
        mapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Goal
    ..registerSingleton<GoalRepository>(
      GoalRepositoryImpl(
        localDataSource: serviceLocator(instanceName: InstanceNames.localHive),
        remoteDataSource: serviceLocator(instanceName: InstanceNames.remoteSupabase),
        mapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Measurement Unit
    ..registerSingleton<CustomeMeasurementUnitRepository>(
      CustomeMeasurementUnitRepositoryImpl(
        localDataSource: serviceLocator(instanceName: InstanceNames.localHive),
        remoteDataSource: serviceLocator(instanceName: InstanceNames.remoteSupabase),
        mapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Scheduled Task
    ..registerSingleton<ScheduleDefinitionRepository>(
      ScheduleDefinitionRepositoryImpl(
        localDataSource: serviceLocator(instanceName: InstanceNames.localHive),
        remoteDataSource: serviceLocator(instanceName: InstanceNames.remoteSupabase),
        mapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Sub Task
    ..registerSingleton<SubTaskRepository>(
      SubTaskRepositoryImpl(
        localDataSource: serviceLocator(instanceName: InstanceNames.localHive),
        remoteDataSource: serviceLocator(instanceName: InstanceNames.remoteSupabase),
        mapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Tag
    ..registerSingleton<TagRepository>(
      TagRepositoryImpl(
        localDataSource: serviceLocator(instanceName: InstanceNames.localHive),
        remoteDataSource: serviceLocator(instanceName: InstanceNames.remoteSupabase),
        mapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Task Activity
    ..registerSingleton<TaskActivityRepository>(
      TaskActivityRepositoryImpl(
        localDataSource: serviceLocator(instanceName: InstanceNames.localHive),
        remoteDataSource: serviceLocator(instanceName: InstanceNames.remoteSupabase),
        mapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    )

    // Task
    ..registerSingleton<TaskRepository>(
      TaskRepositoryImpl(
        localDataSource: serviceLocator(instanceName: InstanceNames.localHive),
        remoteDataSource: serviceLocator(instanceName: InstanceNames.remoteSupabase),
        mapper: serviceLocator(),
        netConnectivity: serviceLocator(),
      ),
    );
}

void _initAuth() {
  serviceLocator

    // DataSources
    ..registerFactory<LocalAuthDataSource>(
      () => LocalAuthDataSourceImpl(
        hiveBox: serviceLocator(),
      ),
    )
    ..registerFactory<RemoteAuthDataSource>(
      () => RemoteAuthDataSourceImpl(
        serviceLocator(),
      ),
    )

    // Repository
    ..registerFactory<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
        remoteDataSource: serviceLocator(),
        localDataSource: serviceLocator(),
        connectionChecker: serviceLocator(),
      ),
    )

    // Usecases
    ..registerFactory(() => CurrentUserUsecase(serviceLocator()))
    ..registerFactory(() => SignUpUsecase(serviceLocator()))
    ..registerFactory(() => SignInUsecase(serviceLocator()))
    ..registerFactory(() => SignOutUsecase(serviceLocator()))
    ..registerFactory(() => ChangePasswordUsecase(serviceLocator()))
    ..registerFactory(() => ResetPasswordUsecase(serviceLocator()))
    ..registerFactory(() => DeleteAccountUsecase(serviceLocator()))

    // AuthBloc
    ..registerSingleton(
      () => AuthBloc(
        signUpUsecase: serviceLocator(),
        signInUsecase: serviceLocator(),
        currentUserUsecase: serviceLocator(),
        signOutUsecase: serviceLocator(),
        appUserCubit: serviceLocator(),
        changePasswordUseCase: serviceLocator(),
        resetPasswordUsecase: serviceLocator(),
        deleteAccountUsecase: serviceLocator(),
        connectionChecker: serviceLocator(),
      ),
    );
}

void _usecases() {
  serviceLocator

    // Category
    ..registerFactory(() => CreateBatchCategoriesUsecase(serviceLocator()))
    ..registerFactory(() => CreateBatchCategoriesUsecase(serviceLocator()))

    // Shared
    ..registerFactory(
      () => CreateTaskWithSubTasksUsecase(
        taskRepo: serviceLocator(),
        subTaskRepo: serviceLocator(),
      ),
    );
}

void _blocs() {
  serviceLocator.registerLazySingleton<TasksManagerBloc>(
    () => TasksManagerBloc(createTaskWithSubtasksUseCase: serviceLocator()),
  );
}

void _navigation() {
  serviceLocator
    ..registerFactory(() => const SignInView())
    ..registerFactory(() => const SignUpView())
    ..registerFactory(() => const TodayTasksView())
    ..registerFactory(() => const ActiveTasksView())
    ..registerFactory(() => const AccomplishmentTasksView())
    ..registerFactory(() => const ReportsView())
    ..registerFactory(() => const ReminderView())
    ..registerFactory(() => const CalendarView())
    ..registerFactory(() => const SettingsView())
    ..registerFactory(
      () => HomeView(
        tabItems: [
          TabItem(
            view: serviceLocator<TodayTasksView>(),
            tabDetail: AppRouteConfigs.todayTasks,
          ),
          TabItem(
            view: serviceLocator<ActiveTasksView>(),
            tabDetail: AppRouteConfigs.activeTasks,
          ),
          TabItem(
            view: serviceLocator<AccomplishmentTasksView>(),
            tabDetail: AppRouteConfigs.accomplishmentTasks,
          ),
          TabItem(
            view: serviceLocator<CalendarView>(),
            tabDetail: AppRouteConfigs.calendar,
          ),
          TabItem(
            view: serviceLocator<ReportsView>(),
            tabDetail: AppRouteConfigs.reports,
          ),
          TabItem(
            view: serviceLocator<ReminderView>(),
            tabDetail: AppRouteConfigs.reminder,
          ),
        ],
      ),
    )
    ..registerSingleton(
      () => AppRouter(
        views: {
          AppRoutes.signIn: serviceLocator<SignInView>(),
          AppRoutes.signUp: serviceLocator<SignUpView>(),
          AppRoutes.home: serviceLocator<HomeView>(),
          AppRoutes.settings: serviceLocator<SettingsView>(),
        },
      ),
    );
}
