// ignore_for_file: one_member_abstracts : bcz it's a service class

import 'package:dartz/dartz.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/utils/date_time.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/domain/enums/hive/interval_unit.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/features/tasks_management/domain/params/generate_instances.dart';

part 'extensions/date_time_generator.dart';
part 'extensions/scheduler_processing.dart';
part 'extensions/process_steps.dart';
part 'extensions/builder.dart';

/// The `ScheduledInstanceGenerator` class is responsible for generating scheduled
/// instances based on various scheduling constraints such as specific days or intervals.
/// It takes into account exception time/date ranges as well as pre-existing scheduled instances.
///
/// Example usage:
/// ```dart
/// // Assuming all the required entities are already instantiated:
/// final generator = ScheduledInstanceGenerator(
///   scheduleConstraint: myScheduleConstraint,
///   days: myDaySchedulers,
///   intervals: myIntervalSchedulers,
///   scheduledInstances: preexistingInstances,
///   dayTimeRanges: myDayTimeRanges,
///   intervalTimeRanges: myIntervalTimeRanges,
///   exceptionTimeRanges: myExceptionTimeRanges,
///   exceptionDateRanges: myExceptionDateRanges,
/// );
///
/// // Generate scheduled instances
/// final result = await generator.generateInstances();
/// result.fold(
///   (failure) => print('Error in scheduling: $failure'),
///   (instances) => instances.forEach(print),
/// );
/// ```
class ScheduledInstanceGenerator {
  void _init(GenerateInstanceParams params) {
    scheduleConstraint = params.scheduleConstraint;
    days = params.days;
    intervals = params.intervals;
    scheduledInstances = params.scheduledInstances;
    dayTimeRanges = params.dayTimeRanges;
    intervalTimeRanges = params.intervalTimeRanges;
    exceptionTimeRanges = params.exceptionTimeRanges;
    exceptionDateRanges = params.exceptionDateRanges;
  }

  /// Constraint defining the schedule’s start, end, and related information.
  late ScheduleConstraintEntity scheduleConstraint;

  /// Contains day-based scheduled events.
  late List<ScheduledDayEntity> days;

  /// Contains interval-based scheduled events.
  late List<ScheduledIntervalEntity> intervals;

  /// Pre-existing scheduled instances.
  late List<ScheduledInstanceEntity> scheduledInstances;

  /// Time ranges for day-based scheduling.
  late List<TimeRangeEntity> dayTimeRanges;

  /// Time ranges for interval-based scheduling.
  late List<TimeRangeEntity> intervalTimeRanges;

  /// Time ranges where scheduling should not occur.
  late List<TimeRangeEntity> exceptionTimeRanges;

  /// Date ranges where scheduling should not occur.
  late List<DateRangeEntity> exceptionDateRanges;

  // Internal store for generated scheduled instances.
  final _generatedInstances = <ScheduledInstanceEntity>[];

  // The reference date from which scheduling calculations start.
  late final DateTime _pointDate;

  /// Generates scheduled instances based on the defined constraints, days, and intervals.
  ///
  /// The process involves:
  /// 1. Clearing any previously generated instances.
  /// 2. Setting a starting point either from pre-existing instances or the schedule constraints.
  /// 3. Processing scheduling constraints via day and interval rules.
  /// 4. Returning the list of generated scheduled instances.
  ///
  /// Example:
  /// ```dart
  /// final instances = await generator.generateInstances();
  /// ```
  EResultFuture<List<ScheduledInstanceEntity>> generateInstances(
    GenerateInstanceParams params,
  ) async {
    try {
      _init(params);

      // Remove any previously generated instances.
      _generatedInstances.clear();
      // Set the starting point for scheduling.
      _pointDate = scheduledInstances.isNotEmpty
          ? DateTime.now()
          : scheduleConstraint.startAt ?? scheduleConstraint.createdAt;

      // Process the constraint conditions.
      _constraintProcessing();
      // Generate instances using day-based scheduling rules.
      _dayProcessing(days);
      // Generate instances using interval-based scheduling rules.
      _intervalProcessing(intervals);

      // Return the populated list as a successful result.
      return Right(_generatedInstances);
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<List<ScheduledInstanceEntity>>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }
}
