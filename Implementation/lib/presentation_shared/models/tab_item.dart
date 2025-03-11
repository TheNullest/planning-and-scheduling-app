import 'package:flutter/widgets.dart';
import 'package:zamaan/core/models/route_config.dart';

class TabItem {
  TabItem({required this.view, required this.tabDetail});

  final Widget view;
  final RouteConfig tabDetail;
}
