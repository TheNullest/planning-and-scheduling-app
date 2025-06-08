import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

import 'package:zamaan/domain/entities/category.dart';

part 'category_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.category)
class CategoryHiveModel extends CategoryEntity {
  CategoryHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required super.title,
    required super.colorCode,
    required super.iconCode,
  });

  factory CategoryHiveModel.fromEntity(CategoryEntity entity) => CategoryHiveModel(
        id: entity.id,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        userId: entity.userId,
        title: entity.title,
        colorCode: entity.colorCode,
        iconCode: entity.iconCode,
      );

  /// Creates a copy of this CategoryEntity with potentially modified properties.
  @override
  CategoryHiveModel copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? title,
    int? colorCode,
    int? iconCode,
  }) =>
      CategoryHiveModel(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        colorCode: colorCode ?? this.colorCode,
        iconCode: iconCode ?? this.iconCode,
      );
}
