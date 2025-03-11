import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

abstract class RouteTransitions {
  static CustomTransitionPage noTransition({
    required GoRouterState state,
    required Widget child,
    Duration duration = Duration.zero,
  }) =>
      CustomTransitionPage(
        child: child,
        key: state.pageKey,
        transitionsBuilder: (_, animation, __, child) => child,
      );

  static CustomTransitionPage fadeTransition({
    required GoRouterState state,
    required Widget child,
    Duration duration = const Duration(milliseconds: 300),
  }) =>
      CustomTransitionPage(
        child: child,
        key: state.pageKey,
        transitionDuration: duration,
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
      );

  static CustomTransitionPage slideTransition({
    required GoRouterState state,
    required Widget child,
    Offset begin = const Offset(1, 0),
    Duration duration = const Duration(milliseconds: 300),
  }) =>
      CustomTransitionPage(
        child: child,
        transitionDuration: duration,
        transitionsBuilder: (_, animation, __, child) => SlideTransition(
          position:
              Tween<Offset>(begin: begin, end: Offset.zero).animate(animation),
        ),
      );
}
