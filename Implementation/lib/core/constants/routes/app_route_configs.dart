import 'package:flutter/material.dart';
import 'package:zamaan/core/constants/routes/app_routes.dart';
import 'package:zamaan/core/localization/app_locale_keys.dart';
import 'package:zamaan/core/models/route_config.dart';

abstract class AppRouteConfigs {
  static final RouteConfig error = RouteConfig(
    titleKey: AppLocaleKeys.uiElements.titles.error,
    icon: Icons.error,
    route: AppRoutes.error,
    routeName: AppRouteNames.error,
  );
  static final RouteConfig signUp = RouteConfig(
    titleKey: AppLocaleKeys.uiElements.titles.signUp,
    icon: Icons.today,
    route: AppRoutes.signUp,
    routeName: AppRouteNames.signUp,
  );

  static final RouteConfig signIn = RouteConfig(
    titleKey: AppLocaleKeys.uiElements.titles.signIn,
    icon: Icons.login,
    route: AppRoutes.signIn,
    routeName: AppRouteNames.signIn,
  );

  static final RouteConfig settings = RouteConfig(
    titleKey: AppLocaleKeys.uiElements.titles.settings,
    icon: Icons.settings,
    route: AppRoutes.settings,
    routeName: AppRouteNames.settings,
  );

  static const RouteConfig home = RouteConfig(
    titleKey: '',
    icon: Icons.dashboard,
    route: AppRoutes.home,
    routeName: AppRouteNames.home,
  );

  static final RouteConfig todayTasks = RouteConfig(
    route: AppRoutes.todayTasks,
    routeName: AppRouteNames.todayTasks,
    icon: Icons.today,
    titleKey: AppLocaleKeys
        .uiElements.titles.todayTasks, // e.g., localizes to 'Today Tasks'
  );

  static final RouteConfig activeTasks = RouteConfig(
    route: AppRoutes.activeTasks,
    routeName: AppRouteNames.activeTasks,
    icon: Icons.task,
    titleKey: AppLocaleKeys.uiElements.titles.activeTasks,
  );

  static final RouteConfig accomplishmentTasks = RouteConfig(
    route: AppRoutes.accomplishmentTasks,
    routeName: AppRouteNames.accomplishmentTasks,
    icon: Icons.done_rounded,
    titleKey: AppLocaleKeys.uiElements.titles.accomplishmentTasks,
  );

  static final RouteConfig calendar = RouteConfig(
    route: AppRoutes.calendar,
    routeName: AppRouteNames.calendar,
    icon: Icons.calendar_today,
    titleKey: AppLocaleKeys.uiElements.titles.calendar,
  );

  static final RouteConfig reports = RouteConfig(
    route: AppRoutes.reports,
    routeName: AppRouteNames.reports,
    icon: Icons.bar_chart,
    titleKey: AppLocaleKeys.uiElements.titles.reports,
  );

  static final RouteConfig reminder = RouteConfig(
    route: AppRoutes.reminder,
    routeName: AppRouteNames.reminder,
    icon: Icons.notifications,
    titleKey: AppLocaleKeys.uiElements.titles.reminder,
  );
}
