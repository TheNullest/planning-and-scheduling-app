// import 'package:dartz/dartz.dart';
// import 'package:zamaan/core/utils/failure_type_detector.dart';
// import 'package:zamaan/core/utils/typedef.dart';
// import 'package:zamaan/domain/aggregates/schedulers_aggregate.dart';
// import 'package:zamaan/domain/repositories/date_range_repository.dart';
// import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
// import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
// import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
// import 'package:zamaan/domain/repositories/time_range_repository.dart';
// import 'package:zamaan/domain/useCases/base_use_case.dart';

// class CreateBatchPlannersUseCase
//     extends UseCaseWithParamsAndMultipleRepos<void, PlannersAggregateEntity> {
//   CreateBatchPlannersUseCase({
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

// //TODO: implement rollback method for failure time
// //TODO: Implement chunking for large batches to process them in smaller chunks.

//   @override
//   EResultFutureVoid call(PlannersAggregateEntity params) async {
//     try {
//       final timeRanges = params.scheduleConstraintAggregate.exceptionTimes
//         ..addAll(params.dayAggregates.expand((day) => day.scheduledTimes))
//         ..addAll(params.intervalAggregates.expand((interval) => interval.scheduledTimes));

//       await _constraintRepository.create(params.scheduleConstraintAggregate.scheduleConstraint);
//       await _dateRangeRepository.createBatch(params.scheduleConstraintAggregate.exceptionDates);
//       await _timeRangeRepository.createBatch(timeRanges);

//       await _dayRepository
//           .createBatch(params.dayAggregates.map((day) => day.scheduledDayTime).toList());
//       await _intervalRepository.createBatch(
//         params.intervalAggregates.map((interval) => interval.scheduledInterval).toList(),
//       );
//       return const Right(null);
//     } on Exception catch (e, stackTrace) {
//       return failureTypeDetectorLeft<void>(
//         e: e,
//         stackTrace: stackTrace,
//       );
//     }
//   }
// }
