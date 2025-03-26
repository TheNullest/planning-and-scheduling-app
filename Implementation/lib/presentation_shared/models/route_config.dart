import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// A reusable model representing a navigation tab item
/// Used across presentation layers for consistent tab configuration
@immutable
class RouteConfig extends Equatable {
  const RouteConfig({
    required this.titleKey,
    required this.icon,
    required this.route,
    required this.routeName,
  });
  final String titleKey;
  final String routeName;
  final IconData icon;
  final String route;

  // Optional: Add copyWith method for immutability
  RouteConfig copyWith({
    String? titleKey,
    IconData? icon,
    String? route,
    String? routeName,
  }) {
    return RouteConfig(
      titleKey: titleKey ?? this.titleKey,
      icon: icon ?? this.icon,
      route: route ?? this.route,
      routeName: routeName ?? this.routeName,
    );
  }

  @override
  List<Object?> get props => [route, icon, titleKey, routeName];
}
