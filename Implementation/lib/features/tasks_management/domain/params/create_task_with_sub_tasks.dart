import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';

class CreateTaskWithDependenciesParams {
  CreateTaskWithDependenciesParams({
    required this.task,
    required this.subTasks,
    required this.scheduleConstraint,
    required this.scheduledDayTimes,
    required this.scheduledIntervals,
    required this.scheduledOccurrences,
  });

  final TaskEntity task;
  final List<SubTaskEntity> subTasks;
  final ScheduleConstraintsEntity scheduleConstraint;
  final List<ScheduledDayTimeEntity> scheduledDayTimes;
  final List<ScheduledIntervalEntity> scheduledIntervals;
  final List<ScheduledOccurrenceEntity> scheduledOccurrences;
}
