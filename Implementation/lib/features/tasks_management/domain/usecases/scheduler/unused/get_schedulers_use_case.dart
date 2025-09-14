// import 'package:dartz/dartz.dart';
// import 'package:zamaan/core/utils/fold_either.dart';
// import 'package:zamaan/core/utils/typedef.dart';
// import 'package:zamaan/domain/aggregates/schedule_constraint_aggregate.dart';
// import 'package:zamaan/domain/aggregates/scheduled_day_time_aggregate.dart';
// import 'package:zamaan/domain/aggregates/scheduled_interval_aggregate.dart';
// import 'package:zamaan/domain/aggregates/schedulers_aggregate.dart';
// import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
// import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
// import 'package:zamaan/domain/entities/schedule_constraints.dart';
// import 'package:zamaan/domain/entities/scheduled_day_time.dart';
// import 'package:zamaan/domain/entities/scheduled_interval.dart';
// import 'package:zamaan/domain/repositories/date_range_repository.dart';
// import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
// import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
// import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
// import 'package:zamaan/domain/repositories/time_range_repository.dart';
// import 'package:zamaan/domain/useCases/base_use_case.dart';

// class GetPlannersUseCase
//     extends UseCaseWithoutParamsWithMultipleRepos<List<PlannersAggregateEntity>> {
//   GetPlannersUseCase({
//     required ScheduleConstraintsRepository constraintRepository,
//     required ScheduledDayTimeRepository dayRepository,
//     required ScheduledIntervalRepository intervalRepository,
//     required DateRangeRepository dateRangeRepository,
//     required TimeRangeRepository timeRangeRepository,
//   })  : _constraintRepository = constraintRepository,
//         _dayRepository = dayRepository,
//         _intervalRepository = intervalRepository,
//         _dateRangeRepository = dateRangeRepository,
//         _timeRangeRepository = timeRangeRepository;

//   final ScheduleConstraintsRepository _constraintRepository;
//   final ScheduledDayTimeRepository _dayRepository;
//   final ScheduledIntervalRepository _intervalRepository;
//   final DateRangeRepository _dateRangeRepository;
//   final TimeRangeRepository _timeRangeRepository;

//   @override
//   EResultFuture<List<PlannersAggregateEntity>> call() async {
//     final schedulers = <PlannersAggregateEntity>[];

//     final constraintResult = await _constraintRepository.get();
//     final constraints = foldEitherRight<List<ScheduleConstraintsEntity>>(constraintResult);

//     final dayResult = await _dayRepository.get();
//     final intervalResult = await _intervalRepository.get();

//     final days = foldEitherRight<List<ScheduledDayTimeEntity>>(dayResult);
//     final intervals = foldEitherRight<List<ScheduledIntervalEntity>>(intervalResult);

//     final dateExceptionResult = await _dateRangeRepository
//         .getByIds(constraints.expand((item) => item.dateRangeExceptionIds).toList());
//     final timeExceptionResult = await _timeRangeRepository
//         .getByIds(constraints.expand((item) => item.timeRangeExceptionIds).toList());

//     final scheduledTimeIds = intervals.expand((item) => item.scheduledTimeIds).toList()
//       ..addAll(days.expand((item) => item.scheduledTimeIds).toList());

//     final scheduledTimeResult = await _timeRangeRepository.getByIds(scheduledTimeIds);

//     final allexceptionDates = {
//       for (final d in foldEitherRight<List<DateRangeEntity>>(dateExceptionResult)) d.id: d,
//     };
//     final allexceptionTimes = {
//       for (final d in foldEitherRight<List<TimeRangeEntity>>(timeExceptionResult)) d.id: d,
//     };
//     final allScheduledTimes = {
//       for (final d in foldEitherRight<List<TimeRangeEntity>>(scheduledTimeResult)) d.id: d,
//     };

//     for (final constraint in constraints) {
//       final scheduleConstraint = ScheduleConstraintAggregate(
//         scheduleConstraint: constraint,
//         exceptionTimes:
//             constraint.timeRangeExceptionIds.map((id) => allexceptionTimes[id]!).toList(),
//         exceptionDates:
//             constraint.dateRangeExceptionIds.map((id) => allexceptionDates[id]!).toList(),
//       );

//       final dayAggregates = <ScheduledDayTimeAggregate>[];
//       final intervalAggregates = <ScheduledIntervalAggregate>[];

//       for (final day in days.where((item) => item.taskId == constraint.id)) {
//         final dayAggregate = ScheduledDayTimeAggregate(
//           scheduledDayTime: day,
//           scheduledTimes: day.scheduledTimeIds.map((id) => allScheduledTimes[id]!).toList(),
//         );
//         dayAggregates.add(dayAggregate);
//       }

//       for (final interval in intervals.where((item) => item.taskId == constraint.id)) {
//         final intervalAggregate = ScheduledIntervalAggregate(
//           scheduledInterval: interval,
//           scheduledTimes: interval.scheduledTimeIds.map((id) => allScheduledTimes[id]!).toList(),
//         );
//         intervalAggregates.add(intervalAggregate);
//       }

//       schedulers.add(
//         PlannersAggregateEntity(
//           scheduleConstraintAggregate: scheduleConstraint,
//           dayAggregates: dayAggregates,
//           intervalAggregates: intervalAggregates,
//         ),
//       );
//     }

//     return Right(schedulers);
//   }
// }
