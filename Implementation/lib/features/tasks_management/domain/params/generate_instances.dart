import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';

class GenerateInstanceParams {
  GenerateInstanceParams({
    required this.scheduleConstraint,
    required this.days,
    required this.intervals,
    required this.scheduledOccurrences,
    required this.dayTimeRanges,
    required this.intervalTimeRanges,
    required this.timeExceptionRanges,
    required this.dateExceptionRanges,
  });

  /// Constraint defining the schedule’s start, end, and related information.
  final ScheduleConstraintsEntity scheduleConstraint;

  /// Contains day-based scheduled events.
  final List<ScheduledDayTimeEntity> days;

  /// Contains interval-based scheduled events.
  final List<ScheduledIntervalEntity> intervals;

  /// Pre-existing scheduled occurrences.
  final List<ScheduledOccurrenceEntity> scheduledOccurrences;

  /// Time ranges for day-based scheduling.
  final List<TimeRangeEntity> dayTimeRanges;

  /// Time ranges for interval-based scheduling.
  final List<TimeRangeEntity> intervalTimeRanges;

  /// Time ranges where scheduling should not occur.
  final List<TimeRangeEntity> timeExceptionRanges;

  /// Date ranges where scheduling should not occur.
  final List<DateRangeEntity> dateExceptionRanges;
}
