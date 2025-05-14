import 'package:zamaan/features/tasks_management/presentation/models/entities/schedule_constraint_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/scheduled_day_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/scheduled_interval_vm.dart';

class ScheduleVM {
  ScheduleVM({
    required this.scheduleConstraint,
    required this.scheduledDays,
    required this.scheduledIntervals,
  });

  final ScheduleConstraintVM? scheduleConstraint;
  final List<ScheduledDayVM> scheduledDays;
  final List<ScheduledIntervalVM> scheduledIntervals;
}
