import 'package:flutter/material.dart';
import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/features/navigation/presentation/navigation_argument_models/navigation_arguments.dart';
import 'package:zamaan/presentation_shared/navigation/app_router.dart';

/// Navigates to a new route and removes all previous routes until
/// the predicate returns true.
///
/// This function uses the `Navigator.pushAndRemoveUntil`
/// method to push a new route onto the navigator stack and
/// remove all previous routes until the provided predicate returns true.
///
/// - Parameters:
///   - context: The `BuildContext` used to find the `Navigator`.
///   - route: The name of the route to navigate to.
///   - predicate: A boolean that determines which routes should remain
///                in the stack. By default, it is set to `false`.
///   - arguments: Optional arguments to pass to the new route.
///
/// - Returns: A `Future` that completes when the navigation is finished.
Future navigatorPushRemoveUntil(
  BuildContext context,
  String route, {
  RoutePredicate? removeUntilPredicate,
  Object? arguments,
}) async =>
    Navigator.of(context).pushAndRemoveUntil(
      serviceLocator<AppRouter>().generateRoute(
        RouteSettings(name: route, arguments: arguments),
      ),
      removeUntilPredicate ?? (route) => route.isFirst,
    );

/// Navigates to a named route.
///
/// This function uses the `Navigator.pushNamed` method to push
/// a named route onto the navigator stack.
///
/// - Parameters:
///   - context: The `BuildContext` used to find the `Navigator`.
///   - route: The name of the route to navigate to.
///   - arguments: Optional arguments to pass to the new route.
///
/// - Returns: A `Future` that completes when the navigation is finished.
Future navigatorPushNamed(
  BuildContext context,
  NavigationArguments arguments,
) async =>
    Navigator.pushNamed(
      context,
      arguments.routeConfig.route,
      arguments: arguments,
    );
