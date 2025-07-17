import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';

class ScheduleConstraintAggregate {
  ScheduleConstraintAggregate({
    required this.scheduleConstraint,
    required this.timeExceptions,
    required this.dateExceptions,
  });

  final ScheduleConstraintsEntity scheduleConstraint;
  final List<TimeRangeEntity> timeExceptions;
  final List<DateRangeEntity> dateExceptions;
}
