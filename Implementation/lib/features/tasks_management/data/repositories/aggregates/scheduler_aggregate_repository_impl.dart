import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/aggregates/schedule_constraint_aggregate.dart';
import 'package:zamaan/domain/aggregates/scheduled_day_aggregate.dart';
import 'package:zamaan/domain/aggregates/scheduled_interval_aggregate.dart';
import 'package:zamaan/domain/aggregates/schedulers_aggregate.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/repositories/aggregates/scheduler_aggregate_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/date_time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_instance_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_range/date_range_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day/scheduled_day_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval/scheduled_interval_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/time_range/time_range_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/date_range_source.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/schedule_constraints_data_source.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_day_data_source.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_instance_data_source.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_interval_data_source.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/time_range_source.dart';

class SchedulerAggregateRepositoryImpl implements SchedulerAggregateRepository {
  SchedulerAggregateRepositoryImpl({
    required ScheduleConstraintLocalDataSource<ScheduleConstraintHiveModel>
        constraintLocalDataSource,
    required ScheduledDayLocalDataSource<ScheduledDayHiveModel> dayLocalDataSource,
    required ScheduledIntervalLocalDataSource<ScheduledIntervalHiveModel> intervalLocalDataSource,
    required ScheduledInstanceLocalDataSource<ScheduledInstanceHiveModel> instanceLocalDataSource,
    required DateRangeLocalDataSource<DateRangeHiveModel> dateRangeLocalDataSource,
    required TimeRangeLocalDataSource<TimeRangeHiveModel> timeRangeLocalDataSource,
    required DataMapper<ScheduleConstraintEntity, ScheduleConstraintHiveModel,
            ScheduleConstraintSupabaseModel>
        constraintMapper,
    required DataMapper<TimeRangeEntity, TimeRangeHiveModel, TimeRangeSupabaseModel> timeMapper,
    required DataMapper<DateRangeEntity, DateRangeHiveModel, DateRangeSupabaseModel> dateMapper,
    required DataMapper<ScheduledDayEntity, ScheduledDayHiveModel, ScheduledDaySupabaseModel>
        dayMapper,
    required DataMapper<ScheduledIntervalEntity, ScheduledIntervalHiveModel,
            ScheduledIntervalSupabaseModel>
        intervalMapper,
  })  : _constraintLocalDataSource = constraintLocalDataSource,
        _dayLocalDataSource = dayLocalDataSource,
        _intervalLocalDataSource = intervalLocalDataSource,
        _instanceLocalDataSource = instanceLocalDataSource,
        _dateRangeLocalDataSource = dateRangeLocalDataSource,
        _timeRangeLocalDataSource = timeRangeLocalDataSource,
        _constraintMapper = constraintMapper,
        _timeMapper = timeMapper,
        _dateMapper = dateMapper,
        _dayMapper = dayMapper,
        _intervalMapper = intervalMapper;

  final ScheduleConstraintLocalDataSource<ScheduleConstraintHiveModel> _constraintLocalDataSource;
  final ScheduledDayLocalDataSource<ScheduledDayHiveModel> _dayLocalDataSource;
  final ScheduledIntervalLocalDataSource<ScheduledIntervalHiveModel> _intervalLocalDataSource;
  final ScheduledInstanceLocalDataSource<ScheduledInstanceHiveModel> _instanceLocalDataSource;
  final DateRangeLocalDataSource<DateRangeHiveModel> _dateRangeLocalDataSource;
  final TimeRangeLocalDataSource<TimeRangeHiveModel> _timeRangeLocalDataSource;
  final DataMapper<ScheduleConstraintEntity, ScheduleConstraintHiveModel,
      ScheduleConstraintSupabaseModel> _constraintMapper;
  final DataMapper<TimeRangeEntity, TimeRangeHiveModel, TimeRangeSupabaseModel> _timeMapper;
  final DataMapper<DateRangeEntity, DateRangeHiveModel, DateRangeSupabaseModel> _dateMapper;
  final DataMapper<ScheduledDayEntity, ScheduledDayHiveModel, ScheduledDaySupabaseModel> _dayMapper;
  final DataMapper<ScheduledIntervalEntity, ScheduledIntervalHiveModel,
      ScheduledIntervalSupabaseModel> _intervalMapper;

  final _constraintEntitiesCached = <ScheduleConstraintEntity>[];

  @override
  EResultFutureVoid batchCascadeDelete(List<String> constraintIds) async => tryCatchEither(
        action: () async {
          final schedulerIds = constraintIds;
          final schedulersResult = await getBatchByIds(constraintIds);
          final schedulers = foldEitherRight<List<SchedulersAggregateEntity>>(schedulersResult);

          final dateRangeIds = schedulers
              .expand(
                (aggregate) =>
                    aggregate.scheduleConstraintAggregate.scheduleConstraint.exceptionDateIds,
              )
              .toList();
          final timeRangeIds = schedulers.expand(
            (aggregate) {
              final times =
                  aggregate.scheduleConstraintAggregate.scheduleConstraint.exceptionTimeIds.toList()
                    ..addAll(
                      aggregate.dayAggregates
                          .expand((day) => day.scheduledDay.scheduledTimeIds)
                          .toList(),
                    )
                    ..addAll(
                      aggregate.intervalAggregates
                          .expand((interval) => interval.scheduledInterval.scheduledTimeIds)
                          .toList(),
                    );
              return times;
            },
          ).toList();

          final days = schedulers
              .expand((item) => item.dayAggregates.map((day) => day.scheduledDay.id))
              .toList();
          final intervals = schedulers
              .expand(
                (item) => item.intervalAggregates.map((interval) => interval.scheduledInterval.id),
              )
              .toList();
          schedulerIds
            ..addAll(days)
            ..addAll(intervals);

          //delete

          await _instanceLocalDataSource.deleteBySchedulerIds(schedulerIds);

          await _dateRangeLocalDataSource.deleteBatch(dateRangeIds);
          await _timeRangeLocalDataSource.deleteBatch(timeRangeIds);

          await _dayLocalDataSource.deleteBatch(days);
          await _intervalLocalDataSource.deleteBatch(intervals);
          await _constraintLocalDataSource.deleteBatch(constraintIds);

          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid cascadeDelete(String constraintId) async => batchCascadeDelete([constraintId]);

  @override
  EResultFuture<List<SchedulersAggregateEntity>> getBatch() async => tryCatchEither(
        action: () async {
          final constraintsResult = await _constraintLocalDataSource.getAll();
          final constraintHives =
              foldEitherRight<List<ScheduleConstraintHiveModel>>(constraintsResult);
          _constraintEntitiesCached.addAll(_constraintMapper.toEntitiesFromHive(constraintHives));
          return getBatchByIds(_constraintEntitiesCached.map((item) => item.id).toList());
        },
      );

  @override
  EResultFuture<List<SchedulersAggregateEntity>> getBatchByIds(List<String> constriantIds) async =>
      tryCatchEither(
        action: () async {
          final aggregates = <SchedulersAggregateEntity>[];

          if (_constraintEntitiesCached.isEmpty) {
            final constraintsResult = await _constraintLocalDataSource.getAllByIds(constriantIds);
            final constraintHives =
                foldEitherRight<List<ScheduleConstraintHiveModel>>(constraintsResult);
            _constraintEntitiesCached.addAll(_constraintMapper.toEntitiesFromHive(constraintHives));
          }

          for (final constraint in _constraintEntitiesCached) {
            final (
              timesResult,
              datesResult,
              instancesReuslt,
              dayAggregatesResult,
              intervalAggregatesResult,
            ) = (
              await _timeRangeLocalDataSource.getAllByIds(constraint.exceptionTimeIds),
              await _dateRangeLocalDataSource.getAllByIds(constraint.exceptionDateIds),
              await _instanceLocalDataSource.getBatchBySchedulers([constraint.id]),
              await _dayLocalDataSource.getBatchByConstraintId(constraint.id),
              await _intervalLocalDataSource.getBatchByConstraintId(constraint.id),
            );

            // Constraint Aggregate
            final constraintAggregate = _fillConstraintRequirements(
              timesResult,
              datesResult,
              constraint,
            );

            // Day Aggregates
            final dayAggregates = await _fillDayAggregates(
              _dayMapper.toEntityFromHiveFoldEitherList(dayAggregatesResult),
            );

            // interval Aggregates

            final intervalAggregates = await _fillIntervalAggregates(
              _intervalMapper.toEntityFromHiveFoldEitherList(intervalAggregatesResult),
            );

            aggregates.add(
              SchedulersAggregateEntity(
                scheduleConstraintAggregate: constraintAggregate,
                dayAggregates: dayAggregates,
                intervalAggregates: intervalAggregates,
              ),
            );
          }

          return Right(aggregates);
        },
      );

  ScheduleConstraintAggregate _fillConstraintRequirements(
    EResult<List<TimeRangeHiveModel>> timesResult,
    EResult<List<DateRangeHiveModel>> datesResult,
    ScheduleConstraintEntity constraint,
  ) {
    final constraintTimeHives = _timeMapper.foldEitherList(timesResult);
    final constraintTimes = _timeMapper.toEntitiesFromHive(constraintTimeHives);

    final constraintDateHives = _dateMapper.foldEitherList(datesResult);
    final constraintDates = _dateMapper.toEntitiesFromHive(constraintDateHives);

    final constraintAggregate = ScheduleConstraintAggregate(
      scheduleConstraint: constraint,
      exceptionTimes: constraintTimes,
      exceptionDates: constraintDates,
    );

    return constraintAggregate;
  }

  @override
  EResultFuture<SchedulersAggregateEntity> getById(String aggregateId) async => Right(
      foldEitherRight<List<SchedulersAggregateEntity>>(await getBatchByIds([aggregateId])).first);

  Future<List<ScheduledDayAggregate>> _fillDayAggregates(
    List<ScheduledDayEntity> days,
  ) async {
    final dayAggregates = <ScheduledDayAggregate>[];
    for (final day in days) {
      final (
        timesResult,
        instancesReuslt,
      ) = (
        await _timeRangeLocalDataSource.getAllByIds(day.scheduledTimeIds),
        await _instanceLocalDataSource.getBatchBySchedulers(days.map((day) => day.id).toList()),
      );
      dayAggregates.add(
        ScheduledDayAggregate(
          scheduledDay: day,
          scheduledTimes: _timeMapper.toEntityFromHiveFoldEitherList(timesResult),
        ),
      );
    }
    return dayAggregates;
  }

  Future<List<ScheduledIntervalAggregate>> _fillIntervalAggregates(
    List<ScheduledIntervalEntity> intervals,
  ) async {
    final dayAggregates = <ScheduledIntervalAggregate>[];
    for (final interval in intervals) {
      final (
        timesResult,
        instancesReuslt,
      ) = (
        await _timeRangeLocalDataSource.getAllByIds(interval.scheduledTimeIds),
        await _instanceLocalDataSource
            .getBatchBySchedulers(intervals.map((day) => day.id).toList()),
      );
      dayAggregates.add(
        ScheduledIntervalAggregate(
          scheduledInterval: interval,
          scheduledTimes: _timeMapper.toEntityFromHiveFoldEitherList(timesResult),
        ),
      );
    }
    return dayAggregates;
  }
}
