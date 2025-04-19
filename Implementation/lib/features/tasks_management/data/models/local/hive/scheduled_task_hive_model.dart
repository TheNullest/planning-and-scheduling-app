import 'package:hive/hive.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/scheduled_task.dart';

part 'scheduled_task_hive_model.g.dart';

@HiveType(typeId: 5) // Unique ID for Hive
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class ScheduledTaskHiveModel extends ScheduledTaskEntity with HiveObjectMixin {
  ScheduledTaskHiveModel({
    required super.taskId,
    super.id,
    super.updatedAt,
    super.description,
    super.createdAt,
    super.userId,
    super.willStartAt,
    super.dueDate,
    super.repetitionType,
    super.timeUnit,
    super.specificTimes,
  }) : super();

  // For the purpose of testing
  ScheduledTaskHiveModel.empty() : super.empty();

  factory ScheduledTaskHiveModel.fromEntity(ScheduledTaskEntity entity) => ScheduledTaskHiveModel(
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        taskId: entity.taskId,
        willStartAt: entity.willStartAt,
        dueDate: entity.dueDate,
        repetitionType: entity.repetitionType,
        timeUnit: entity.timeUnit,
        specificTimes: entity.specificTimes,
      );

  /// Creates a copy of the current `ScheduledTaskEntity` with updated values.
  @override
  ScheduledTaskHiveModel copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? taskId,
    DateTime? willStartAt,
    DateTime? dueDate,
    String? repetitionType,
    String? timeUnit,
    List<int>? specificTimes,
  }) =>
      ScheduledTaskHiveModel(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        taskId: taskId ?? this.taskId,
        willStartAt: willStartAt ?? this.willStartAt,
        dueDate: dueDate ?? this.dueDate,
        repetitionType: repetitionType ?? this.repetitionType,
        timeUnit: timeUnit ?? this.timeUnit,
        specificTimes: specificTimes ?? this.specificTimes,
      );
}
