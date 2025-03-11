part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;
Future<void> intiDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: 'secrets/.env');

  await HiveServices.init();

  _initAuth();

  final supabase = await Supabase.initialize(
    url: SupabaseConfig.supabaseUrl,
    anonKey: SupabaseConfig.supabaseAnonKey,
  );

  serviceLocator
    ..registerLazySingleton(() => supabase.client)

    // core

    ..registerLazySingleton(AppUserCubit.new)
    ..registerFactory(InternetConnection.new)
    ..registerFactory<ConnectionChecker>(
      () => ConnectionCheckerImpl(serviceLocator()),
    );

  _navigation();
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
    ..registerFactory(
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

void _initAuth() {
  serviceLocator

    // Initilizers
    ..registerFactory(HiveServices<LocalUserModel>.new)

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
    ..registerLazySingleton(
      () => AuthBloc(
        signUpUsecase: serviceLocator(),
        signInUsecase: serviceLocator(),
        currentUserUsecase: serviceLocator(),
        signOutUsecase: serviceLocator(),
        appUserCubit: serviceLocator(),
        changePasswordUseCase: serviceLocator(),
        resetPasswordUsecase: serviceLocator(),
        deleteAccountUsecase: serviceLocator(),
      ),
    );
}
