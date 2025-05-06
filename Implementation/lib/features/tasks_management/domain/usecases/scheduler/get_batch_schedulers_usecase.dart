import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/aggregates/schedule_constraint_aggregate.dart';
import 'package:zamaan/domain/aggregates/scheduled_day_aggregate.dart';
import 'package:zamaan/domain/aggregates/scheduled_interval_aggregate.dart';
import 'package:zamaan/domain/aggregates/schedulers_aggregate.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetBatchSchedulersUsecase
    extends UsecaseWithoutParamsWithMultipleRepos<List<SchedulersAggregateEntity>> {
  GetBatchSchedulersUsecase({
    required ScheduleConstraintRepository constraintRepository,
    required ScheduledDayRepository dayRepository,
    required ScheduledIntervalRepository intervalRepository,
    required DateRangeRepository dateRangeRepository,
    required TimeRangeRepository timeRangeRepository,
  })  : _constraintRepository = constraintRepository,
        _dayRepository = dayRepository,
        _intervalRepository = intervalRepository,
        _dateRangeRepository = dateRangeRepository,
        _timeRangeRepository = timeRangeRepository;

  final ScheduleConstraintRepository _constraintRepository;
  final ScheduledDayRepository _dayRepository;
  final ScheduledIntervalRepository _intervalRepository;
  final DateRangeRepository _dateRangeRepository;
  final TimeRangeRepository _timeRangeRepository;

  @override
  EResultFuture<List<SchedulersAggregateEntity>> call() async {
    final schedulers = <SchedulersAggregateEntity>[];

    final constraintResult = await _constraintRepository.getAll();
    final constraints = foldEitherRight<List<ScheduleConstraintEntity>>(constraintResult);

    final dayResult = await _dayRepository.getAll();
    final intervalResult = await _intervalRepository.getAll();

    final days = foldEitherRight<List<ScheduledDayEntity>>(dayResult);
    final intervals = foldEitherRight<List<ScheduledIntervalEntity>>(intervalResult);

    final exceptionDateResult = await _dateRangeRepository
        .getByIds(constraints.expand((item) => item.exceptionDateIds).toList());
    final exceptionTimeResult = await _timeRangeRepository
        .getByIds(constraints.expand((item) => item.exceptionTimeIds).toList());

    final scheduledTimeIds = intervals.expand((item) => item.scheduledTimeIds).toList()
      ..addAll(days.expand((item) => item.scheduledTimeIds).toList());

    final scheduledTimeResult = await _timeRangeRepository.getByIds(scheduledTimeIds);

    final allExceptionDates = {
      for (final d in foldEitherRight<List<DateRangeEntity>>(exceptionDateResult)) d.id: d,
    };
    final allExceptionTimes = {
      for (final d in foldEitherRight<List<TimeRangeEntity>>(exceptionTimeResult)) d.id: d,
    };
    final allScheduledTimes = {
      for (final d in foldEitherRight<List<TimeRangeEntity>>(scheduledTimeResult)) d.id: d,
    };

    for (final constraint in constraints) {
      final scheduleConstraint = ScheduleConstraintAggregate(
        scheduleConstraint: constraint,
        exceptionTimes: constraint.exceptionTimeIds.map((id) => allExceptionTimes[id]!).toList(),
        exceptionDates: constraint.exceptionDateIds.map((id) => allExceptionDates[id]!).toList(),
      );

      final dayAggregates = <ScheduledDayAggregate>[];
      final intervalAggregates = <ScheduledIntervalAggregate>[];

      for (final day in days.where((item) => item.scheduleConstraintId == constraint.id)) {
        final dayAggregate = ScheduledDayAggregate(
          scheduledDay: day,
          scheduledTimes: day.scheduledTimeIds.map((id) => allScheduledTimes[id]!).toList(),
        );
        dayAggregates.add(dayAggregate);
      }

      for (final interval
          in intervals.where((item) => item.scheduleConstraintId == constraint.id)) {
        final intervalAggregate = ScheduledIntervalAggregate(
          scheduledInterval: interval,
          scheduledTimes: interval.scheduledTimeIds.map((id) => allScheduledTimes[id]!).toList(),
        );
        intervalAggregates.add(intervalAggregate);
      }

      schedulers.add(
        SchedulersAggregateEntity(
          scheduleConstraintAggregate: scheduleConstraint,
          dayAggregates: dayAggregates,
          intervalAggregates: intervalAggregates,
        ),
      );
    }

    return Right(schedulers);
  }
}
