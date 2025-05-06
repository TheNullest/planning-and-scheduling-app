import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';

class ScheduledIntervalAggregate {
  ScheduledIntervalAggregate({
    required this.scheduledInterval,
    required this.scheduledTimes,
  });

  final ScheduledIntervalEntity scheduledInterval;
  final List<TimeRangeEntity> scheduledTimes;
}
