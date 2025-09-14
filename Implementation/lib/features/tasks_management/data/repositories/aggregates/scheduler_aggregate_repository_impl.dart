// import 'package:dartz/dartz.dart';
// import 'package:zamaan/core/utils/failure_type_detector.dart';
// import 'package:zamaan/core/utils/fold_either.dart';
// import 'package:zamaan/core/utils/typedef.dart';
// import 'package:zamaan/data/mappers/bases/data_mapper.dart';
// import 'package:zamaan/domain/aggregates/schedule_constraint_aggregate.dart';
// import 'package:zamaan/domain/aggregates/scheduled_day_time_aggregate.dart';
// import 'package:zamaan/domain/aggregates/scheduled_interval_aggregate.dart';
// import 'package:zamaan/domain/aggregates/schedulers_aggregate.dart';
// import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
// import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
// import 'package:zamaan/domain/entities/schedule_constraints.dart';
// import 'package:zamaan/domain/entities/scheduled_day_time.dart';
// import 'package:zamaan/domain/entities/scheduled_interval.dart';
// import 'package:zamaan/domain/repositories/aggregates/scheduler_aggregate_repository.dart';
// import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/constraint_date_time_range_hive_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/time_range_hive_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_time_hive_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_occurrence_hive_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_hive_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_range/date_range_supabase_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day_time/scheduled_day_time_supabase_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval/scheduled_interval_supabase_model.dart';
// import 'package:zamaan/features/tasks_management/data/models/remote/supabase/time_range/time_range_supabase_model.dart';
// import 'package:zamaan/features/tasks_management/data/sources/local/bases/date_range_source.dart';
// import 'package:zamaan/features/tasks_management/data/sources/local/bases/schedule_constraints_data_source.dart';
// import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_day_time_data_source.dart';
// import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_occurrence_data_source.dart';
// import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_interval_data_source.dart';
// import 'package:zamaan/features/tasks_management/data/sources/local/bases/time_range_source.dart';

// class SchedulerAggregateRepositoryImpl implements SchedulerAggregateRepository {
//   SchedulerAggregateRepositoryImpl({
//     required ScheduleConstraintsLocalDataSource<ScheduleConstraintsHiveModel>
//         constraintLocalDataSource,
//     required ScheduledDayTimeLocalDataSource<ScheduledDayTimeHiveModel> dayLocalDataSource,
//     required ScheduledIntervalLocalDataSource<ScheduledIntervalHiveModel> intervalLocalDataSource,
//     required ScheduledOccurrenceLocalDataSource<ScheduledOccurrenceHiveModel> instanceLocalDataSource,
//     required DateRangeLocalDataSource<DateRangeHiveModel> dateRangeLocalDataSource,
//     required TimeRangeLocalDataSource<TimeRangeHiveModel> timeRangeLocalDataSource,
//     required DataMapper<ScheduleConstraintsEntity, ScheduleConstraintsHiveModel,
//             ScheduleConstraintsSupabaseModel>
//         constraintMapper,
//     required DataMapper<TimeRangeEntity, TimeRangeHiveModel, TimeRangeSupabaseModel> timeMapper,
//     required DataMapper<DateRangeEntity, DateRangeHiveModel, DateRangeSupabaseModel> dateMapper,
//     required DataMapper<ScheduledDayTimeEntity, ScheduledDayTimeHiveModel, ScheduledDayTimeSupabaseModel>
//         dayMapper,
//     required DataMapper<ScheduledIntervalEntity, ScheduledIntervalHiveModel,
//             ScheduledIntervalSupabaseModel>
//         intervalMapper,
//   })  : _constraintLocalDataSource = constraintLocalDataSource,
//         _dayLocalDataSource = dayLocalDataSource,
//         _intervalLocalDataSource = intervalLocalDataSource,
//         _instanceLocalDataSource = instanceLocalDataSource,
//         _dateRangeLocalDataSource = dateRangeLocalDataSource,
//         _timeRangeLocalDataSource = timeRangeLocalDataSource,
//         _constraintMapper = constraintMapper,
//         _timeMapper = timeMapper,
//         _dateMapper = dateMapper,
//         _dayMapper = dayMapper,
//         _intervalMapper = intervalMapper;

//   final ScheduleConstraintsLocalDataSource<ScheduleConstraintsHiveModel> _constraintLocalDataSource;
//   final ScheduledDayTimeLocalDataSource<ScheduledDayTimeHiveModel> _dayLocalDataSource;
//   final ScheduledIntervalLocalDataSource<ScheduledIntervalHiveModel> _intervalLocalDataSource;
//   final ScheduledOccurrenceLocalDataSource<ScheduledOccurrenceHiveModel> _instanceLocalDataSource;
//   final DateRangeLocalDataSource<DateRangeHiveModel> _dateRangeLocalDataSource;
//   final TimeRangeLocalDataSource<TimeRangeHiveModel> _timeRangeLocalDataSource;
//   final DataMapper<ScheduleConstraintsEntity, ScheduleConstraintsHiveModel,
//       ScheduleConstraintsSupabaseModel> _constraintMapper;
//   final DataMapper<TimeRangeEntity, TimeRangeHiveModel, TimeRangeSupabaseModel> _timeMapper;
//   final DataMapper<DateRangeEntity, DateRangeHiveModel, DateRangeSupabaseModel> _dateMapper;
//   final DataMapper<ScheduledDayTimeEntity, ScheduledDayTimeHiveModel, ScheduledDayTimeSupabaseModel> _dayMapper;
//   final DataMapper<ScheduledIntervalEntity, ScheduledIntervalHiveModel,
//       ScheduledIntervalSupabaseModel> _intervalMapper;

//   final _constraintEntitiesCached = <ScheduleConstraintsEntity>[];
//   @override
//   EResultFutureVoid batchCascadeDelete(List<String> constraintIds) async {
//     try {
//       // Create a mutable copy of the provided constraint IDs.
//       final schedulerIds = List<String>.from(constraintIds);

//       // Retrieve scheduler aggregate entities.
//       final schedulersResult = await getByIds(constraintIds);
//       final schedulers = foldEitherRight<List<PlannersAggregateEntity>>(schedulersResult);

//       // Extract date range IDs from each scheduler aggregate.
//       final dateRangeIds = schedulers
//           .expand(
//             (aggregate) =>
//                 aggregate.scheduleConstraintAggregate.scheduleConstraint.dateRangeExceptionIds,
//           )
//           .toList();

//       // Extract time range IDs by merging several collections.
//       final timeRangeIds = schedulers.expand((aggregate) {
//         final times =
//             aggregate.scheduleConstraintAggregate.scheduleConstraint.timeRangeExceptionIds.toList()
//               ..addAll(
//                 aggregate.dayAggregates.expand((day) => day.scheduledDayTime.scheduledTimeIds).toList(),
//               )
//               ..addAll(
//                 aggregate.intervalAggregates
//                     .expand((interval) => interval.scheduledInterval.scheduledTimeIds)
//                     .toList(),
//               );
//         return times;
//       }).toList();

//       // Get scheduled day and interval IDs.
//       final days = schedulers
//           .expand((item) => item.dayAggregates.map((day) => day.scheduledDayTime.id))
//           .toList();

//       final intervals = schedulers
//           .expand(
//             (item) => item.intervalAggregates.map((interval) => interval.scheduledInterval.id),
//           )
//           .toList();

//       // Append days and intervals to the scheduler IDs.
//       schedulerIds
//         ..addAll(days)
//         ..addAll(intervals);

//       // Perform deletion on all related data.
//       await _instanceLocalDataSource.deleteBySchedulerIds(schedulerIds);
//       await _dateRangeLocalDataSource.delete(dateRangeIds);
//       await _timeRangeLocalDataSource.delete(timeRangeIds);
//       await _dayLocalDataSource.delete(days);
//       await _intervalLocalDataSource.delete(intervals);
//       await _constraintLocalDataSource.delete(constraintIds);

//       return const Right(null);
//     } on Exception catch (e, stackTrace) {
//       throw failureTypeDetector(e: e, stackTrace: stackTrace);
//     }
//   }

//   @override
//   EResultFutureVoid cascadeDelete(String constraintId) async {
//     // Delegate to batchCascadeDelete using a single-element list.
//     return batchCascadeDelete([constraintId]);
//   }

//   @override
//   EResultFuture<List<PlannersAggregateEntity>> get() async {
//     try {
//       final constraintsResult = await _constraintLocalDataSource.get();
//       final constraintHives =
//           foldEitherRight<List<ScheduleConstraintsHiveModel>>(constraintsResult);

//       // Cache all retrieved constraint entities.
//       _constraintEntitiesCached.addAll(_constraintMapper.toEntitiesFromHive(constraintHives));

//       // Retrieve aggregates for all cached constraint IDs.
//       final cachedIds = _constraintEntitiesCached.map((item) => item.id).toList();
//       return await getByIds(cachedIds);
//     } on Exception catch (e, stackTrace) {
//       throw failureTypeDetector(e: e, stackTrace: stackTrace);
//     }
//   }

//   @override
//   EResultFuture<List<PlannersAggregateEntity>> getByIds(List<String> constraintIds) async {
//     try {
//       final aggregates = <PlannersAggregateEntity>[];

//       // If the cache is empty, load constraint entities.
//       if (_constraintEntitiesCached.isEmpty) {
//         final constraintsResult = await _constraintLocalDataSource.getByIds(constraintIds);
//         final constraintHives =
//             foldEitherRight<List<ScheduleConstraintsHiveModel>>(constraintsResult);
//         _constraintEntitiesCached.addAll(_constraintMapper.toEntitiesFromHive(constraintHives));
//       }

//       // For each cached constraint, retrieve associated data and build aggregates.
//       for (final constraint in _constraintEntitiesCached) {
//         final timesResult =
//             await _timeRangeLocalDataSource.getByIds(constraint.timeRangeExceptionIds);
//         final datesResult =
//             await _dateRangeLocalDataSource.getByIds(constraint.dateRangeExceptionIds);

//         final dayAggregatesResult = await _dayLocalDataSource.getByTaskId(constraint.id);
//         final intervalAggregatesResult =
//             await _intervalLocalDataSource.getByConstraintId(constraint.id);

//         // Build the constraint aggregate.
//         final constraintAggregate = _fillConstraintRequirements(
//           timesResult,
//           datesResult,
//           constraint,
//         );

//         // Build day aggregates.
//         final dayAggregates = await _fillDayAggregates(
//           _dayMapper.toEntityFromHiveFoldEitherList(dayAggregatesResult),
//         );

//         // Build interval aggregates.
//         final intervalAggregates = await _fillIntervalAggregates(
//           _intervalMapper.toEntityFromHiveFoldEitherList(intervalAggregatesResult),
//         );

//         aggregates.add(
//           PlannersAggregateEntity(
//             scheduleConstraintAggregate: constraintAggregate,
//             dayAggregates: dayAggregates,
//             intervalAggregates: intervalAggregates,
//           ),
//         );
//       }

//       return Right(aggregates);
//     } on Exception catch (e, stackTrace) {
//       throw failureTypeDetector(e: e, stackTrace: stackTrace);
//     }
//   }

//   ScheduleConstraintAggregate _fillConstraintRequirements(
//     EResult<List<TimeRangeHiveModel>> timesResult,
//     EResult<List<DateRangeHiveModel>> datesResult,
//     ScheduleConstraintsEntity constraint,
//   ) {
//     final constraintTimeHives = _timeMapper.foldEitherList(timesResult);
//     final constraintTimes = _timeMapper.toEntitiesFromHive(constraintTimeHives);

//     final constraintDateHives = _dateMapper.foldEitherList(datesResult);
//     final constraintDates = _dateMapper.toEntitiesFromHive(constraintDateHives);

//     final constraintAggregate = ScheduleConstraintAggregate(
//       scheduleConstraint: constraint,
//       exceptionTimes: constraintTimes,
//       exceptionDates: constraintDates,
//     );

//     return constraintAggregate;
//   }

//   @override
//   EResultFuture<PlannersAggregateEntity> getById(String aggregateId) async => Right(
//         foldEitherRight<List<PlannersAggregateEntity>>(await getByIds([aggregateId])).first,
//       );

//   Future<List<ScheduledDayTimeAggregate>> _fillDayAggregates(
//     List<ScheduledDayTimeEntity> days,
//   ) async {
//     final dayAggregates = <ScheduledDayTimeAggregate>[];
//     for (final day in days) {
//       final (
//         timesResult,
//         instancesReuslt,
//       ) = (
//         await _timeRangeLocalDataSource.getByIds(day.scheduledTimeIds),
//         await _instanceLocalDataSource.getByPlanners(days.map((day) => day.id).toList()),
//       );
//       dayAggregates.add(
//         ScheduledDayTimeAggregate(
//           scheduledDayTime: day,
//           scheduledTimes: _timeMapper.toEntityFromHiveFoldEitherList(timesResult),
//         ),
//       );
//     }
//     return dayAggregates;
//   }

//   Future<List<ScheduledIntervalAggregate>> _fillIntervalAggregates(
//     List<ScheduledIntervalEntity> intervals,
//   ) async {
//     final dayAggregates = <ScheduledIntervalAggregate>[];
//     for (final interval in intervals) {
//       final (
//         timesResult,
//         instancesReuslt,
//       ) = (
//         await _timeRangeLocalDataSource.getByIds(interval.scheduledTimeIds),
//         await _instanceLocalDataSource
//             .getByPlanners(intervals.map((day) => day.id).toList()),
//       );
//       dayAggregates.add(
//         ScheduledIntervalAggregate(
//           scheduledInterval: interval,
//           scheduledTimes: _timeMapper.toEntityFromHiveFoldEitherList(timesResult),
//         ),
//       );
//     }
//     return dayAggregates;
//   }
// }
