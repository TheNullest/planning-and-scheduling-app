import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/cubits/user/app_user_cubit.dart';
import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/localization/multi_assets_loader.dart';
import 'package:zamaan/core/providers/user_provider.dart';
import 'package:zamaan/core/utils/snackbars.dart';
import 'package:zamaan/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:zamaan/features/auth/presentation/views/sign_in_view.dart';
import 'package:zamaan/features/navigation/presentation/views/home_view.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/categories/categories_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/date_time_ranges/date_time_ranges_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/goals/goals_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tags/tags_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/presentation_shared/navigation/app_router.dart';
import 'package:zamaan/presentation_shared/theme/app_dark_theme.dart';

void main() async {
  await initDependencies();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations/en/',
      assetLoader: MultiAssetsLoader(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => serviceLocator<NetworkConnectivityMonitorCubit>(),
          ),

          // Categories and Tags manager blocs will not be provided at the root level,
          // because they will be used in specific views.
          // so they will be provided in the views where they are needed.

          BlocProvider(create: (_) => serviceLocator<AppUserCubit>()),
          BlocProvider(create: (_) => serviceLocator<AuthBloc>()),
          BlocProvider(create: (_) => serviceLocator<TasksManagerBloc>()),
          BlocProvider(create: (_) => serviceLocator<CategoriesManagerBloc>()),
          BlocProvider(create: (_) => serviceLocator<TagsManagerBloc>()),
          BlocProvider(create: (_) => serviceLocator<GoalsManagerBloc>()),
          BlocProvider(create: (_) => serviceLocator<ScheduleConstraintsManagerBloc>()),
          BlocProvider(create: (_) => serviceLocator<DateTimeRangesManagerBloc>()),
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
    context.read<AuthBloc>().add(AuthInitializeEvent());
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
        home: Stack(
          children: [
            Positioned.fill(
              child: BlocConsumer<NetworkConnectivityMonitorCubit, NetworkConnectivityMonitorState>(
                listener: (context, state) {
                  if (state is NetworkConnectivityMonitorFailureState) {
                    showSnackBar(context, 'No Internet Connection');
                  }
                  if (state is NetworkConnectivityMonitorSuccessState) {
                    showSnackBar(context, 'Connected');
                  }
                },
                builder: (context, state) {
                  return const SizedBox.shrink();
                },
              ),
            ),
            Positioned(
              child: BlocSelector<AppUserCubit, AppUserState, bool>(
                selector: (state) => state is AppUserSignedInState,
                builder: (context, userSignedIn) =>
                    userSignedIn ? serviceLocator<HomeView>() : serviceLocator<SignInView>(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
