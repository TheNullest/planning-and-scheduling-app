import 'package:flutter/widgets.dart' show Color, IconData;
import 'package:zamaan/features/tasks_management/presentation/models/category_ui.dart';

class TagUI extends CategoryUI {
  TagUI({
    required super.id,
    required super.description,
    required super.createdAt,
    required super.updatedAt,
    required super.title,
    required super.color,
    required super.icon,
  });

  @override
  TagUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
    Color? color,
    IconData? icon,
  }) =>
      TagUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        title: title ?? this.title,
        color: color ?? this.color,
        icon: icon ?? this.icon,
      );
}
