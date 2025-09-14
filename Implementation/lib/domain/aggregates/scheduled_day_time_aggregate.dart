import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';

class ScheduledDayTimeAggregate {
  ScheduledDayTimeAggregate({
    required this.scheduledDayTime,
    required this.scheduledTimes,
  });

  final ScheduledDayTimeEntity scheduledDayTime;
  final List<TimeRangeEntity> scheduledTimes;
}
