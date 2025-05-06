import 'package:zamaan/domain/aggregates/schedule_constraint_aggregate.dart';
import 'package:zamaan/domain/aggregates/scheduled_day_aggregate.dart';
import 'package:zamaan/domain/aggregates/scheduled_interval_aggregate.dart';

class SchedulersAggregateEntity {
  SchedulersAggregateEntity({
    required this.scheduleConstraintAggregate,
    required this.dayAggregates,
    required this.intervalAggregates,
  });

  final ScheduleConstraintAggregate scheduleConstraintAggregate;
  final List<ScheduledDayAggregate> dayAggregates;
  final List<ScheduledIntervalAggregate> intervalAggregates;
}
