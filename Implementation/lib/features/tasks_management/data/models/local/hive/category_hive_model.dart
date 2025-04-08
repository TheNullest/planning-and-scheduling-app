import 'package:hive/hive.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/category_entity.dart';

part 'category_hive_model.g.dart';

@HiveType(typeId: 2) // Unique ID for Hive
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class CategoryHiveModel extends CategoryEntity with HiveObjectMixin {
  CategoryHiveModel({
    required super.title,
    required super.colorCode,
    required super.iconCode,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });

  // For the purpose of testing
  CategoryHiveModel.empty() : super.empty();

  factory CategoryHiveModel.fromEntity(CategoryEntity entity) =>
      CategoryHiveModel(
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
    String? colorCode,
    String? iconCode,
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
