import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class ScheduledInstanceUI extends BaseUIModel {
  ScheduledInstanceUI({
    required this.startDateTime,
    required this.endDateTime,
    required this.schedulerId,
    required this.schedulerType,
    required this.taskStatus,
    required this.sequenceNumber,
    required this.successPercentage,
    required this.timezone,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });

  factory ScheduledInstanceUI.fromEntity({
    required ScheduledInstanceEntity entity,
  }) {
    return ScheduledInstanceUI(
      id: entity.id,
      description: entity.description,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      startDateTime: entity.startDateTime,
      endDateTime: entity.endDateTime,
      schedulerId: entity.schedulerId,
      schedulerType: entity.schedulerType,
      taskStatus: entity.taskStatus,
      sequenceNumber: entity.sequenceNumber,
      successPercentage: entity.successPercentage,
      timezone: entity.timezone,
      userId: entity.userId,
    );
  }

  final DateTime startDateTime;
  final DateTime endDateTime;
  final String schedulerId;
  final SchedulerType schedulerType;
  final TaskStatus taskStatus;
  final int sequenceNumber;
  final int successPercentage;
  final String timezone;

  @override
  ScheduledInstanceUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startDateTime,
    DateTime? endDateTime,
    String? schedulerId,
    SchedulerType? schedulerType,
    TaskStatus? taskStatus,
    int? sequenceNumber,
    int? successPercentage,
    String? timezone,
    String? userId,
  }) =>
      ScheduledInstanceUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        startDateTime: startDateTime ?? this.startDateTime,
        endDateTime: endDateTime ?? this.endDateTime,
        schedulerId: schedulerId ?? this.schedulerId,
        schedulerType: schedulerType ?? this.schedulerType,
        taskStatus: taskStatus ?? this.taskStatus,
        sequenceNumber: sequenceNumber ?? this.sequenceNumber,
        successPercentage: successPercentage ?? this.successPercentage,
        timezone: timezone ?? this.timezone,
        userId: userId ?? this.userId,
      );
}
