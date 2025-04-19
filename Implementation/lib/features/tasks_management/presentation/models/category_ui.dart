import 'package:flutter/widgets.dart' show Color, IconData;

import 'package:zamaan/features/tasks_management/presentation/models/base_ui.dart';

class CategoryUI extends BaseUIModel {
  CategoryUI({
    required super.id,
    required super.description,
    required super.createdAt,
    required super.updatedAt,
    required this.title,
    required this.color,
    required this.icon,
  });

  final String title;
  final Color color;
  final IconData icon;

  @override
  CategoryUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
    Color? color,
    IconData? icon,
  }) =>
      CategoryUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        title: title ?? this.title,
        color: color ?? this.color,
        icon: icon ?? this.icon,
      );
}
