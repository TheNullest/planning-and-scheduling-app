import 'package:zamaan/domain/aggregates/schedule_constraint_aggregate.dart';
import 'package:zamaan/domain/aggregates/scheduled_day_time_aggregate.dart';
import 'package:zamaan/domain/aggregates/scheduled_interval_aggregate.dart';

class PlannersAggregateEntity {
  PlannersAggregateEntity({
    required this.scheduleConstraintAggregate,
    required this.dayAggregates,
    required this.intervalAggregates,
  });

  final ScheduleConstraintAggregate scheduleConstraintAggregate;
  final List<ScheduledDayTimeAggregate> dayAggregates;
  final List<ScheduledIntervalAggregate> intervalAggregates;
}
