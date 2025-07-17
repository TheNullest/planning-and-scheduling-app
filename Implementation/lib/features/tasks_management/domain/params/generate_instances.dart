import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';

class GenerateInstanceParams {
  GenerateInstanceParams({
    required this.scheduleConstraint,
    required this.days,
    required this.intervals,
    required this.scheduledInstances,
    required this.dayTimeRanges,
    required this.intervalTimeRanges,
    required this.timeExceptionRanges,
    required this.dateExceptionRanges,
  });

  /// Constraint defining the schedule’s start, end, and related information.
  final ScheduleConstraintsEntity scheduleConstraint;

  /// Contains day-based scheduled events.
  final List<ScheduledDayEntity> days;

  /// Contains interval-based scheduled events.
  final List<ScheduledIntervalEntity> intervals;

  /// Pre-existing scheduled instances.
  final List<ScheduledInstanceEntity> scheduledInstances;

  /// Time ranges for day-based scheduling.
  final List<TimeRangeEntity> dayTimeRanges;

  /// Time ranges for interval-based scheduling.
  final List<TimeRangeEntity> intervalTimeRanges;

  /// Time ranges where scheduling should not occur.
  final List<TimeRangeEntity> timeExceptionRanges;

  /// Date ranges where scheduling should not occur.
  final List<DateRangeEntity> dateExceptionRanges;
}
