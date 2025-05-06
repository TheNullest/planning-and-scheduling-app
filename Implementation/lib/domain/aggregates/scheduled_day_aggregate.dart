import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';

class ScheduledDayAggregate {
  ScheduledDayAggregate({
    required this.scheduledDay,
    required this.scheduledTimes,
  });

  final ScheduledDayEntity scheduledDay;
  final List<TimeRangeEntity> scheduledTimes;
}
