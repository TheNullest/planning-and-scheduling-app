import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class ScheduledInstanceVM extends BaseViewModel {
  ScheduledInstanceVM({
    required this.startDateTime,
    required this.endDateTime,
    required this.schedulerId,
    required this.schedulerType,
    required this.taskStatus,
    required this.sequenceNumber,
    required this.successPercentage,
    required this.timezone,
    required this.taskId,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
    super.entityState,
  });

  final DateTime startDateTime;
  final DateTime endDateTime;
  final String schedulerId;
  final SchedulerType schedulerType;
  final TaskStatus taskStatus;
  final int sequenceNumber;
  final int successPercentage;
  final String timezone;
  final String taskId;

  @override
  ScheduledInstanceVM copyWith({
    String? id,
    String? description,
    String? taskId,
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
      ScheduledInstanceVM(
        id: id ?? this.id,
        description: description ?? this.description,
        taskId: taskId ?? this.taskId,
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
