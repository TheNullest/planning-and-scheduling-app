import 'package:hive/hive.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/task.dart';

part 'main_task_hive_model.g.dart';

@HiveType(typeId: 1)
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class TaskHiveModel extends TaskEntity with HiveObjectMixin {
  TaskHiveModel({
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
    super.dueDate,
    super.totalSpentTime,
    super.taskSchedulerId,
  });

  TaskHiveModel.empty() : super.empty();

  factory TaskHiveModel.fromEntity(TaskEntity entity) => TaskHiveModel(
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
        dueDate: entity.dueDate,
        totalSpentTime: entity.totalSpentTime,
        taskSchedulerId: entity.taskSchedulerId,
      );

  @override
  TaskHiveModel copyWith({
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
      TaskHiveModel(
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
        dueDate: dueDate ?? this.dueDate,
        totalSpentTime: totalSpentTime ?? this.totalSpentTime,
        taskSchedulerId: taskSchedulerId ?? taskSchedulerId,
      );
}
