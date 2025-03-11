import 'package:flutter/widgets.dart';
import 'package:zamaan/core/constants/routes/app_routes.dart';

class AppRouter {
  AppRouter({required Map<String, Widget> views}) : _views = views;

  final Map<String, Widget> _views;

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Route for the sign-up view
      case AppRoutes.signUp:
        return _pageBuilder(
          _views[settings.name]!,
          settings,
        );

      // Route for the sign-in view
      case AppRoutes.signIn:
        return _pageBuilder(
          _views[settings.name]!,
          settings,
        );

      // Route for the settings view
      case AppRoutes.settings:
        return _pageBuilder(
          _views[settings.name]!,
          settings,
        );

      // Route for the main task view
      case AppRoutes.home:
        return _pageBuilder(
          _views[settings.name]!,
          settings,
        );

      // Default route for views under construction
      default:
        return _pageBuilder(
          _views[settings.name]!,
          settings,
        );
    }
  }

  /// Helper method to create a [PageRouteBuilder] with a fade transition.
  /// This method constructs a route with a fade transition animation.
  ///
  /// [page] is a function that returns the widget to be displayed.
  /// [settings] contains the settings for the route, including the route name.
  PageRouteBuilder<dynamic> _pageBuilder(
    Widget page,
    RouteSettings settings,
  ) =>
      PageRouteBuilder(
        settings: settings,
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        pageBuilder: (context, _, __) => page,
      );
}
