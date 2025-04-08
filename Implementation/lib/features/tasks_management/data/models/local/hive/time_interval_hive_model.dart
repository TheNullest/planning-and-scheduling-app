import 'package:hive/hive.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/task_activity.dart';

part 'time_interval_hive_model.g.dart'; // Include for code generation

@HiveType(typeId: 8) // Unique ID for Hive
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class TaskActivityHiveModel extends TaskActivityEntity with HiveObjectMixin {
  TaskActivityHiveModel({
    required super.taskId,
    required super.subTaskId,
    required super.startAt,
    super.id,
    super.updatedAt,
    super.description,
    super.createdAt,
    super.userId,
    super.endAt,
    super.spentTime,
    super.isPaused,
  }) : super();
  factory TaskActivityHiveModel.fromEntity(TaskActivityEntity entity) =>
      TaskActivityHiveModel(
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        taskId: entity.taskId,
        subTaskId: entity.subTaskId,
        startAt: entity.startAt,
        endAt: entity.endAt,
        spentTime: entity.spentTime,
      );

  // For the purpose of testing
  TaskActivityHiveModel.empty() : super.empty();

  @override
  TaskActivityHiveModel copyWith({
    String? id,
    int? order,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? taskId,
    String? subTaskId,
    DateTime? startAt,
    DateTime? endAt,
    bool? isPaused,
  }) =>
      TaskActivityHiveModel(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        taskId: taskId ?? this.taskId,
        subTaskId: subTaskId ?? this.subTaskId,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        isPaused: isPaused ?? this.isPaused,
      );
}
