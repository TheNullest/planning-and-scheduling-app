import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/enums.dart';

part 'task_hive_model.g.dart';

/// A Hive model for persisting task data.
///
/// The [TaskHiveModel] extends [TaskEntity] to help store task-related information
/// in Hive. It contains fields such as identifiers, title, color and icon codes,
/// priority, associated category and fixed tag identifiers, total time spent,
/// archived flag, and the task status.
///
/// ## Example Usage:
/// ```dart
/// // Create a domain entity instance:
/// final taskEntity = TaskEntity(
///   id: 'task_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Implement new feature',
///   title: 'New Feature',
///   colorCode: 0xff5733,
///   iconCode: 0xe001,
///   priority: Priority.high,
///   categoryies: ['cat_001', 'cat_002'],
///   fixedTagIds: ['tag_001'],
///   totalSpentTime: Duration(hours: 4),
///   archived: false,
///   taskStatus: TaskStatus.inProgress,
/// );
///
/// // Convert the domain entity into a Hive model:
/// final taskHiveModel = TaskHiveModel.fromEntity(taskEntity);
///
/// // Create a modified version with updated title and status:
/// final updatedTaskHiveModel = taskHiveModel.copyWith(
///   title: 'Updated Feature Title',
///   taskStatus: TaskStatus.completed,
/// );
/// ```
///
/// The Hive annotations ensure proper serialization for storage.
@HiveType(typeId: ClassHiveTypeIds.task) // Unique Type ID for Hive
class TaskHiveModel extends TaskEntity {
  TaskHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.title,
    required super.colorCode,
    required super.iconCode,
    required super.priority,
    required super.subTaskIds,
    required super.categoryIds,
    required super.fixedTagIds,
    required super.totalSpentTime,
    required super.archived,
    required super.taskStatus,
    super.description,
    super.updatedAt,
  });

  /// Factory constructor that creates a [TaskHiveModel] instance from a [TaskEntity].
  ///
  /// This method maps each property from the domain entity to the corresponding Hive model.
  factory TaskHiveModel.fromEntity(TaskEntity entity) {
    return TaskHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      description: entity.description,
      title: entity.title,
      colorCode: entity.colorCode,
      iconCode: entity.iconCode,
      priority: entity.priority,
      categoryIds: List.from(entity.categoryIds),
      fixedTagIds: List.from(entity.fixedTagIds),
      totalSpentTime: entity.totalSpentTime,
      archived: entity.archived,
      taskStatus: entity.taskStatus,
      subTaskIds: List.from(entity.subTaskIds),
    );
  }

  /// Returns a new instance of [TaskHiveModel] with updated values.
  ///
  /// Any provided parameter will override the current instance's corresponding field.
  /// Fields that are omitted retain their original values, ensuring immutability.
  @override
  TaskHiveModel copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? title,
    int? colorCode,
    int? iconCode,
    List<String>? subTaskIds,
    List<String>? categoryIds,
    Priority? priority,
    bool? archived,
    List<String>? fixedTagIds,
    Duration? totalSpentTime,
    TaskStatus? taskStatus,
  }) {
    return TaskHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      description: description ?? this.description,
      title: title ?? this.title,
      colorCode: colorCode ?? this.colorCode,
      iconCode: iconCode ?? this.iconCode,
      priority: priority ?? this.priority,
      categoryIds: categoryIds ?? List.from(this.categoryIds),
      fixedTagIds: fixedTagIds ?? List.from(this.fixedTagIds),
      totalSpentTime: totalSpentTime ?? this.totalSpentTime,
      archived: archived ?? this.archived,
      taskStatus: taskStatus ?? this.taskStatus,
      subTaskIds: subTaskIds ?? List.from(this.subTaskIds),
    );
  }
}
