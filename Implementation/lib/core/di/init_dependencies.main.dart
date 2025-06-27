part of 'init_dependencies.imports.dart';

final GetIt serviceLocator = GetIt.instance;
Future<void> initDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: 'secrets/.env');

  await _supabase();
  _hiveServices();
  _dataMappers();
  // _viewModelMappers();
  _datasources();
  _repositories();

  // BLoCs
  _authBloc();
  _categoriesManagerBloc();
  _tagsManagerBloc();
  _tasksManagerBloc();
  _goalsManagerBloc();

  _navigator();

  await serviceLocator<HiveInitializer>().init();
}

Future _supabase() async {
  final supabase = await Supabase.initialize(
    url: SupabaseConfig.supabaseUrl,
    anonKey: SupabaseConfig.supabaseAnonKey,
  );

  serviceLocator
    ..registerSingleton<SupabaseClient>(supabase.client)

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
    ..registerSingleton<NetworkConnectivityMonitorCubit>(
      NetworkConnectivityMonitorCubit(serviceLocator()),
    );
}
