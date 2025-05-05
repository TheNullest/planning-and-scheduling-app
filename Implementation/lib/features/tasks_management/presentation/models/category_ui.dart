import 'package:flutter/widgets.dart' show Color, IconData;
import 'package:zamaan/domain/entities/category.dart';

import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class CategoryUI extends BaseUIModel {
  CategoryUI({
    required this.title,
    required this.color,
    required this.icon,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });

  factory CategoryUI.fromEntity({
    required CategoryEntity entity,
    String? userId,
  }) =>
      CategoryUI(
        id: entity.id,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        title: entity.title,
        color: Color(entity.colorCode),
        icon: IconData(entity.iconCode),
        userId: userId,
      );

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
    String? userId,
  }) =>
      CategoryUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        title: title ?? this.title,
        color: color ?? this.color,
        icon: icon ?? this.icon,
        userId: userId ?? this.userId,
      );
}
