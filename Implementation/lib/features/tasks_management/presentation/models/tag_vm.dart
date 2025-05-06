import 'package:flutter/widgets.dart' show Color, IconData;
import 'package:zamaan/features/tasks_management/presentation/models/category_vm.dart';

class TagVM extends CategoryVM {
  TagVM({
    required super.title,
    required super.color,
    required super.icon,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
    super.entityState,
  });

  @override
  TagVM copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
    Color? color,
    IconData? icon,
    String? userId,
  }) =>
      TagVM(
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
