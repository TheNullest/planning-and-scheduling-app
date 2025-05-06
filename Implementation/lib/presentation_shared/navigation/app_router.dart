import 'package:flutter/widgets.dart';
import 'package:zamaan/features/navigation/presentation/views/error_view.dart';

class AppRouter {
  AppRouter({required Map<String, Widget> views}) : _views = views;

  final Map<String, Widget> _views;

  Route<dynamic> generateRoute(RouteSettings settings) {
    final page = _views[settings.name];
    if (page == null) {
      // Handle undefined routes with a fallback widget
      return _pageBuilder(
        const ErrorView(), // Replace with your error page widget
        settings,
      );
    }
    return _pageBuilder(page, settings);
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
