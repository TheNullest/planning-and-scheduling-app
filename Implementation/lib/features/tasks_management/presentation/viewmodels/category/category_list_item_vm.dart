import 'package:flutter/material.dart' show Color, IconData;
import 'package:zamaan/domain/entities/category.dart';

class CategoryListItemVm {
  CategoryListItemVm(
      {required this.id, required this.label, required this.color, required this.icon});
  CategoryListItemVm.fromEntity(CategoryEntity entity)
      : id = entity.id,
        label = entity.title,
        color = Color(entity.colorCode),
        icon = IconData(entity.iconCode, fontFamily: 'MaterialIcons');

  final String id;
  final String label;
  final Color color;
  final IconData icon;
}
