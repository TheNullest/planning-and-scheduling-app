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

  /// Creates a copy of the current `ScheduledInstanceHiveModel` with optional updated fields.

  @override
  ScheduledInstanceHiveModel copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    DateTime? startDateTime,
    DateTime? endDateTime,
    String? schedulerId,
    SchedulerType? schedulerType,
    TaskStatus? taskStatus,
    int? sequenceNumber,
    int? successPercentage,
    String? timezone,
  }) {
    return ScheduledInstanceHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description, // Updated to use exception reason
      updatedAt: updatedAt ?? this.updatedAt,
      startDateTime: startDateTime ?? this.startDateTime,
      endDateTime: endDateTime ?? this.endDateTime,
      schedulerId: schedulerId ?? this.schedulerId,
      schedulerType: schedulerType ?? this.schedulerType,
      taskStatus: taskStatus ?? this.taskStatus,
      sequenceNumber: sequenceNumber ?? this.sequenceNumber,
      successPercentage: successPercentage ?? this.successPercentage,
      timezone: timezone ?? this.timezone,
    );
  }
}
