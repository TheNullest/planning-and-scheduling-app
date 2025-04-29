import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';

@HiveType(typeId: 115)
class ScheduledInstanceEntity extends BaseEntityAbstraction {
  ScheduledInstanceEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.startDateTime,
    required this.endDateTime,
    required this.schedulerId,
    required this.schedulerType,
    required this.taskStatus,
    required this.sequenceNumber,
    super.description, // Reused for exception reason
    super.updatedAt,
    this.successPercentage = 0,
    this.timezone = 'UTC',
  }) : assert(
          successPercentage >= 0 && successPercentage <= 100,
          'Success percentage must be between 0-100',
        );

  // Hive fields start from 11 (assuming base uses 0-10)
  @HiveField(11)
  final DateTime startDateTime;

  @HiveField(12)
  final DateTime endDateTime;

  @HiveField(13)
  final String schedulerId;

  @HiveField(14)
  final SchedulerType schedulerType;

  @HiveField(15)
  final TaskStatus taskStatus;

  @HiveField(16)
  final int sequenceNumber;

  @HiveField(17)
  final int successPercentage;

  @HiveField(18)
  final String timezone;

  /// Use inherited [description] field from BaseEntityAbstraction for:
  /// - Exception reasons
  /// - Special scheduling notes
  /// - Cancellation rationale

  @override
  ScheduledInstanceEntity copyWith({
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
    return ScheduledInstanceEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
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
