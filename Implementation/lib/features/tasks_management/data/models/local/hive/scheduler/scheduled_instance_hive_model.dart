import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';

part 'scheduled_instance_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.scheduledInstance) // Unique Type ID for Hive
class ScheduledInstanceHiveModel extends ScheduledInstanceEntity {
  ScheduledInstanceHiveModel({
    required super.id,
    required super.userId,
    required super.taskId,
    required super.createdAt,
    required super.startDateTime,
    required super.endDateTime,
    required super.schedulerId,
    required super.schedulerType,
    required super.taskStatus,
    required super.sequenceNumber,
    super.description, // Reused for exception reason
    super.updatedAt,
    super.successPercentage,
    super.timezone,
  });

  /// Creates a `ScheduledInstanceHiveModel` from a `ScheduledInstanceEntity`.
  factory ScheduledInstanceHiveModel.fromEntity(ScheduledInstanceEntity entity) {
    return ScheduledInstanceHiveModel(
      id: entity.id,
      userId: entity.userId,
      taskId: entity.taskId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      startDateTime: entity.startDateTime,
      endDateTime: entity.endDateTime,
      schedulerId: entity.schedulerId,
      schedulerType: entity.schedulerType,
      taskStatus: entity.taskStatus,
      sequenceNumber: entity.sequenceNumber,
      description: entity.description, // Updated to use exception reason
    );
  }
}
