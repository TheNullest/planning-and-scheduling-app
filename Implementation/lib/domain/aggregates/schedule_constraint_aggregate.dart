import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';

class ScheduleConstraintAggregate {
  ScheduleConstraintAggregate({
    required this.scheduleConstraint,
    required this.exceptionTimes,
    required this.exceptionDates,
  });

  final ScheduleConstraintsEntity scheduleConstraint;
  final List<TimeRangeEntity> exceptionTimes;
  final List<DateRangeEntity> exceptionDates;
}
