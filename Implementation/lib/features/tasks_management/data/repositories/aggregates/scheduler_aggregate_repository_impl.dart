import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/fold_either.dart';
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
    required ScheduleConstraintsLocalDataSource<ScheduleConstraintsHiveModel>
        constraintLocalDataSource,
    required ScheduledDayLocalDataSource<ScheduledDayHiveModel> dayLocalDataSource,
    required ScheduledIntervalLocalDataSource<ScheduledIntervalHiveModel> intervalLocalDataSource,
    required ScheduledInstanceLocalDataSource<ScheduledInstanceHiveModel> instanceLocalDataSource,
    required DateRangeLocalDataSource<DateRangeHiveModel> dateRangeLocalDataSource,
    required TimeRangeLocalDataSource<TimeRangeHiveModel> timeRangeLocalDataSource,
    required DataMapper<ScheduleConstraintsEntity, ScheduleConstraintsHiveModel,
            ScheduleConstraintsSupabaseModel>
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

  final ScheduleConstraintsLocalDataSource<ScheduleConstraintsHiveModel> _constraintLocalDataSource;
  final ScheduledDayLocalDataSource<ScheduledDayHiveModel> _dayLocalDataSource;
  final ScheduledIntervalLocalDataSource<ScheduledIntervalHiveModel> _intervalLocalDataSource;
  final ScheduledInstanceLocalDataSource<ScheduledInstanceHiveModel> _instanceLocalDataSource;
  final DateRangeLocalDataSource<DateRangeHiveModel> _dateRangeLocalDataSource;
  final TimeRangeLocalDataSource<TimeRangeHiveModel> _timeRangeLocalDataSource;
  final DataMapper<ScheduleConstraintsEntity, ScheduleConstraintsHiveModel,
      ScheduleConstraintsSupabaseModel> _constraintMapper;
  final DataMapper<TimeRangeEntity, TimeRangeHiveModel, TimeRangeSupabaseModel> _timeMapper;
  final DataMapper<DateRangeEntity, DateRangeHiveModel, DateRangeSupabaseModel> _dateMapper;
  final DataMapper<ScheduledDayEntity, ScheduledDayHiveModel, ScheduledDaySupabaseModel> _dayMapper;
  final DataMapper<ScheduledIntervalEntity, ScheduledIntervalHiveModel,
      ScheduledIntervalSupabaseModel> _intervalMapper;

  final _constraintEntitiesCached = <ScheduleConstraintsEntity>[];
  @override
  EResultFutureVoid batchCascadeDelete(List<String> constraintIds) async {
    try {
      // Create a mutable copy of the provided constraint IDs.
      final schedulerIds = List<String>.from(constraintIds);

      // Retrieve scheduler aggregate entities.
      final schedulersResult = await getBatchByIds(constraintIds);
      final schedulers = foldEitherRight<List<SchedulersAggregateEntity>>(schedulersResult);

      // Extract date range IDs from each scheduler aggregate.
      final dateRangeIds = schedulers
          .expand(
            (aggregate) =>
                aggregate.scheduleConstraintAggregate.scheduleConstraint.dateRangeExceptionIds,
          )
          .toList();

      // Extract time range IDs by merging several collections.
      final timeRangeIds = schedulers.expand((aggregate) {
        final times =
            aggregate.scheduleConstraintAggregate.scheduleConstraint.timeRangeExceptionIds.toList()
              ..addAll(
                aggregate.dayAggregates.expand((day) => day.scheduledDay.scheduledTimeIds).toList(),
              )
              ..addAll(
                aggregate.intervalAggregates
                    .expand((interval) => interval.scheduledInterval.scheduledTimeIds)
                    .toList(),
              );
        return times;
      }).toList();

      // Get scheduled day and interval IDs.
      final days = schedulers
          .expand((item) => item.dayAggregates.map((day) => day.scheduledDay.id))
          .toList();

      final intervals = schedulers
          .expand(
            (item) => item.intervalAggregates.map((interval) => interval.scheduledInterval.id),
          )
          .toList();

      // Append days and intervals to the scheduler IDs.
      schedulerIds
        ..addAll(days)
        ..addAll(intervals);

      // Perform deletion on all related data.
      await _instanceLocalDataSource.deleteBySchedulerIds(schedulerIds);
      await _dateRangeLocalDataSource.deleteBatch(dateRangeIds);
      await _timeRangeLocalDataSource.deleteBatch(timeRangeIds);
      await _dayLocalDataSource.deleteBatch(days);
      await _intervalLocalDataSource.deleteBatch(intervals);
      await _constraintLocalDataSource.deleteBatch(constraintIds);

      return const Right(null);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid cascadeDelete(String constraintId) async {
    // Delegate to batchCascadeDelete using a single-element list.
    return batchCascadeDelete([constraintId]);
  }

  @override
  EResultFuture<List<SchedulersAggregateEntity>> getBatch() async {
    try {
      final constraintsResult = await _constraintLocalDataSource.getAll();
      final constraintHives =
          foldEitherRight<List<ScheduleConstraintsHiveModel>>(constraintsResult);

      // Cache all retrieved constraint entities.
      _constraintEntitiesCached.addAll(_constraintMapper.toEntitiesFromHive(constraintHives));

      // Retrieve aggregates for all cached constraint IDs.
      final cachedIds = _constraintEntitiesCached.map((item) => item.id).toList();
      return await getBatchByIds(cachedIds);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<SchedulersAggregateEntity>> getBatchByIds(List<String> constraintIds) async {
    try {
      final aggregates = <SchedulersAggregateEntity>[];

      // If the cache is empty, load constraint entities.
      if (_constraintEntitiesCached.isEmpty) {
        final constraintsResult = await _constraintLocalDataSource.getAllByIds(constraintIds);
        final constraintHives =
            foldEitherRight<List<ScheduleConstraintsHiveModel>>(constraintsResult);
        _constraintEntitiesCached.addAll(_constraintMapper.toEntitiesFromHive(constraintHives));
      }

      // For each cached constraint, retrieve associated data and build aggregates.
      for (final constraint in _constraintEntitiesCached) {
        final timesResult =
            await _timeRangeLocalDataSource.getAllByIds(constraint.timeRangeExceptionIds);
        final datesResult =
            await _dateRangeLocalDataSource.getAllByIds(constraint.dateRangeExceptionIds);

        final dayAggregatesResult = await _dayLocalDataSource.getBatchByConstraintId(constraint.id);
        final intervalAggregatesResult =
            await _intervalLocalDataSource.getBatchByConstraintId(constraint.id);

        // Build the constraint aggregate.
        final constraintAggregate = _fillConstraintRequirements(
          timesResult,
          datesResult,
          constraint,
        );

        // Build day aggregates.
        final dayAggregates = await _fillDayAggregates(
          _dayMapper.toEntityFromHiveFoldEitherList(dayAggregatesResult),
        );

        // Build interval aggregates.
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
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  ScheduleConstraintAggregate _fillConstraintRequirements(
    EResult<List<TimeRangeHiveModel>> timesResult,
    EResult<List<DateRangeHiveModel>> datesResult,
    ScheduleConstraintsEntity constraint,
  ) {
    final constraintTimeHives = _timeMapper.foldEitherList(timesResult);
    final constraintTimes = _timeMapper.toEntitiesFromHive(constraintTimeHives);

    final constraintDateHives = _dateMapper.foldEitherList(datesResult);
    final constraintDates = _dateMapper.toEntitiesFromHive(constraintDateHives);

    final constraintAggregate = ScheduleConstraintAggregate(
      scheduleConstraint: constraint,
      timeExceptions: constraintTimes,
      dateExceptions: constraintDates,
    );

    return constraintAggregate;
  }

  @override
  EResultFuture<SchedulersAggregateEntity> getById(String aggregateId) async => Right(
        foldEitherRight<List<SchedulersAggregateEntity>>(await getBatchByIds([aggregateId])).first,
      );

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
