import 'package:flutter/widgets.dart';
import 'package:zamaan/features/navigation/presentation/views/error_view.dart';

class AppRouter {
  AppRouter({required Map<String, Widget Function(BuildContext, RouteSettings)> views})
      : _views = views;

  final Map<String, Widget Function(BuildContext, RouteSettings)> _views;

  Route<dynamic> generateRoute(RouteSettings settings) {
    final builder = _views[settings.name];
    if (builder == null) {
      // Handle undefined routes with a fallback widget
      return _pageBuilder(
        (context, _) => const ErrorView(), // Replace with your error page widget
        settings,
      );
    }
    return _pageBuilder(builder, settings);
  }

  /// Helper method to create a [PageRouteBuilder] with a fade transition.
  /// This method constructs a route with a fade transition animation.
  ///
  /// [builder] is a function that returns the widget to be displayed.
  /// [settings] contains the settings for the route, including the route name.
  PageRouteBuilder<dynamic> _pageBuilder(
    Widget Function(BuildContext, RouteSettings) builder,
    RouteSettings settings,
  ) =>
      PageRouteBuilder(
        settings: settings,
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        pageBuilder: (context, _, __) => builder(context, settings),
      );
}
