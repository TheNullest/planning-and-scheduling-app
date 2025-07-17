part of 'init_dependencies.imports.dart';

void _authBloc() {
  serviceLocator

    // DataSources
    ..registerFactory<LocalAuthDataSource>(
      () => LocalAuthDataSourceImpl(
        usersBox: serviceLocator(),
        sessionsBox: serviceLocator(),
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
        mapper: serviceLocator<UserDataMapper>(),
      ),
    );

  _authBlocs();
}

void _authBlocs() {
  serviceLocator

    // UseCases
    ..registerFactory(() => AuthInitializeUseCase(serviceLocator()))
    ..registerFactory(() => SignUpUseCase(serviceLocator()))
    ..registerFactory(() => SignInUseCase(serviceLocator()))
    ..registerFactory(() => SignOutUseCase(serviceLocator()))
    ..registerFactory(() => ChangePasswordUseCase(serviceLocator()))
    ..registerFactory(() => ResetPasswordUseCase(serviceLocator()))
    ..registerFactory(() => DeleteAccountUseCase(serviceLocator()))

    // AuthBloc
    ..registerSingleton<AuthBloc>(
      AuthBloc(
        authInitializeUseCase: serviceLocator(),
        signUpUseCase: serviceLocator(),
        signInUseCase: serviceLocator(),
        signOutUseCase: serviceLocator(),
        appUserCubit: serviceLocator(),
        changePasswordUseCase: serviceLocator(),
        resetPasswordUseCase: serviceLocator(),
        deleteAccountUseCase: serviceLocator(),
        connectionChecker: serviceLocator(),
      ),
    );
}
