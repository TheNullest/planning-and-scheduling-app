import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/localization/multi_assets_loader.dart';
import 'package:zamaan/core/navigation/app_router.dart';
import 'package:zamaan/core/providers/user_provider.dart';
import 'package:zamaan/core/theme/app_dark_theme.dart';
import 'package:zamaan/features/auth/presentation/viewmodels/auth/auth_bloc.dart';
import 'package:zamaan/features/auth/presentation/views/sign_in_view.dart';
import 'package:zamaan/features/navigation/presentation/views/home_view.dart';
import 'package:zamaan/infrastructure/di/init_dependencies.dart';
import 'package:zamaan/presentation_shared/cubits/user/app_user_cubit.dart';

void main() async {
  await intiDependencies();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations/en/',
      assetLoader: MultiAssetsLoader(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => serviceLocator<AppUserCubit>()),
          BlocProvider(create: (_) => serviceLocator<AuthBloc>()),
        ],
        child: const Zamaan(),
      ),
    ),
  );
}

class Zamaan extends StatefulWidget {
  const Zamaan({super.key});

  @override
  State<Zamaan> createState() => _ZamaanState();
}

class _ZamaanState extends State<Zamaan> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = serviceLocator<AppRouter>();
    context.read<AuthBloc>().add(AuthIsUserSignedInEvent());
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: MaterialApp(
        theme: AppTheme.darkThemeMode,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        onGenerateRoute: _appRouter.generateRoute,
        home: BlocSelector<AppUserCubit, AppUserState, bool>(
          selector: (state) => state is AppUserSignedInState,
          builder: (context, userSignedIn) => userSignedIn
              ? serviceLocator<HomeView>()
              : serviceLocator<SignInView>(),
        ),
      ),
    );
  }
}

//TODO #2 Implement a versioning system within your models (e.g., an additional field) to track changes over time.
