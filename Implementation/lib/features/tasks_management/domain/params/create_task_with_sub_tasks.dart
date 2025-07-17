import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';

class CreateTaskWithDependenciesParams {
  CreateTaskWithDependenciesParams({
    required this.task,
    required this.subTasks,
    required this.scheduleConstraint,
    required this.scheduledDays,
    required this.scheduledIntervals,
    required this.scheduledInstances,
  });

  final TaskEntity task;
  final List<SubTaskEntity> subTasks;
  final ScheduleConstraintsEntity scheduleConstraint;
  final List<ScheduledDayEntity> scheduledDays;
  final List<ScheduledIntervalEntity> scheduledIntervals;
  final List<ScheduledInstanceEntity> scheduledInstances;
}
