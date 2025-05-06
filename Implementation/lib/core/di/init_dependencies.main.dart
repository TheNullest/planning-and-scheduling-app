part of 'init_dependencies.imports.dart';

final serviceLocator = GetIt.instance;
Future<void> intiDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: 'secrets/.env');

  await _supabase();
  _hiveServices();
  _initAuth();
  _dataMappers();
  _viewModelMappers();
  _datasources();
  _repositories();
  _authBlocs();
  _taskManagerBloc();
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
