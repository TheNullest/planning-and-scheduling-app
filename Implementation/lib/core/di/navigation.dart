part of 'init_dependencies.imports.dart';

void _navigator() {
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
    ..registerSingleton<AppRouter>(
      AppRouter(
        views: {
          AppRoutes.signIn: (context, settings) => serviceLocator<SignInView>(),
          AppRoutes.signUp: (context, settings) => serviceLocator<SignUpView>(),
          AppRoutes.home: (context, settings) => serviceLocator<HomeView>(),
          AppRoutes.settings: (context, settings) => serviceLocator<SettingsView>(),
          AppRoutes.upsertTask: (context, settings) {
            return TaskUpsertView(
              arguments: settings.arguments! as TaskUpsertNavigationArguments,
            );
          },
          // AppRoutes.upsertCategory: (context, settings) {
          //   return CategoryUpsertView(
          //     arguments: settings.arguments! as CategoryUpsertNavigationArguments,
          //   );
          // },
        },
      ),
    );
}
