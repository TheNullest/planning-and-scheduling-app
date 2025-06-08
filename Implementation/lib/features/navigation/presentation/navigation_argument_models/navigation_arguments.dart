import 'package:zamaan/presentation_shared/models/route_config.dart';

abstract class NavigationArguments {
  NavigationArguments({required this.routeConfig});

  final RouteConfig routeConfig;
  final Map<Symbol, dynamic> extraArguments = <Symbol, dynamic>{};
  void addExtraArgument(Symbol key, dynamic value) => extraArguments[key] = value;
  dynamic getExtraArgument(Symbol key) => extraArguments[key];
}
