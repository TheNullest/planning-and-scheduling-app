import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';

part 'main_task_hive_model.g.dart';

@HiveType(typeId: 1)
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class MainTaskHiveModel extends MainTaskEntity with HiveObjectMixin {
  MainTaskHiveModel({
    required super.title,
    required super.categoryIds,
    required super.colorCode,
    required super.iconCode,
    super.id,
    super.updatedAt,
    super.userId,
    super.description,
    super.createdAt,
    super.priority,
    super.status,
    super.fixedTagIds,
    super.tagIds,
    super.dueDate,
    super.totalSpentTime,
    super.taskSchedulerId,
  });

  MainTaskHiveModel.empty() : super.empty();

  factory MainTaskHiveModel.fromEntity(MainTaskEntity entity) =>
      MainTaskHiveModel(
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        title: entity.title,
        colorCode: entity.colorCode,
        iconCode: entity.iconCode,
        categoryIds: entity.categoryIds,
        priority: entity.priority,
        status: entity.status,
        fixedTagIds: entity.fixedTagIds,
        tagIds: entity.tagIds,
        dueDate: entity.dueDate,
        totalSpentTime: entity.totalSpentTime,
        taskSchedulerId: entity.taskSchedulerId,
      );

  @override
  MainTaskHiveModel copyWith({
    String? id,
    DateTime? updatedAt,
    DateTime? createdAt,
    String? userId,
    String? description,
    String? title,
    String? colorCode,
    String? iconCode,
    List<String>? categoryIds,
    int? priority,
    int? status,
    List<String>? fixedTagIds,
    List<String>? tagIds,
    DateTime? dueDate,
    Duration? totalSpentTime,
    String? taskSchedulerId,
  }) =>
      MainTaskHiveModel(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        colorCode: colorCode ?? this.colorCode,
        iconCode: iconCode ?? this.iconCode,
        categoryIds: categoryIds ?? this.categoryIds,
        priority: priority ?? this.priority,
        status: status ?? this.status,
        fixedTagIds: fixedTagIds ?? this.fixedTagIds,
        tagIds: tagIds ?? this.tagIds,
        dueDate: dueDate ?? this.dueDate,
        totalSpentTime: totalSpentTime ?? this.totalSpentTime,
        taskSchedulerId: taskSchedulerId ?? taskSchedulerId,
      );
}
