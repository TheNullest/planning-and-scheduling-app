import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';

class CreateSchedulersParams {
  CreateSchedulersParams({
    required this.scheduleConstraints,
    required this.days,
    required this.intervals,
    required this.instances,
  });

  final List<ScheduleConstraintEntity> scheduleConstraints;
  final List<ScheduledDayEntity> days;
  final List<ScheduledIntervalEntity> intervals;
  final List<ScheduledInstanceEntity> instances;
}
