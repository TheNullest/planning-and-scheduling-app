// part of '../scheduled_occurrence_generator.dart';

// /// An extension that handles processing of scheduling rules such as overall constraints,
// /// day-based scheduling, and interval-based scheduling.
// extension SchedulerProcessing on ScheduledOccurrenceGenerator {
//   /// Processes the overall scheduling constraint.
//   ///
//   /// If no day-based or interval-based rules are provided, this method creates a default
//   /// scheduled occurrence based solely on the overall schedule constraint.
//   ///
//   /// Example:
//   /// ```dart
//   /// // If both day and interval schedulers are empty, create a default instance.
//   /// _constraintProcessing();
//   /// ```
//   void _constraintProcessing() {
//     if (days.isEmpty && intervals.isEmpty) {
//       _buildInstance(
//         dateRange: DateRangeEntity.fromDates(
//           parentId: scheduleConstraint.id,
//           userId: scheduleConstraint.userId,
//           start: scheduleConstraint.startTime!,
//           end: scheduleConstraint.endTime!,
//         ),
//         scheduler: scheduleConstraint,
//         schedulerType: SchedulerType.schedudleConstraint,
//         sequenceNumber: 0,
//         taskId: scheduleConstraint.taskId,
//       );
//     }
//   }

//   /// Processes day-based scheduling rules.
//   ///
//   /// For each day scheduler:
//   /// 1. Determines the target day based on whether the scheduler represents a weekday or a day-of-month.
//   /// 2. Generates a list of [DateTime] instances that satisfy the rule using [_processDaySteps].
//   /// 3. Converts these dates into date ranges using scheduled time IDs.
//   /// 4. Calls [_appendGeneratedInstances] to build and register scheduled occurrences.
//   ///
//   /// Example:
//   /// ```dart
//   /// // Process all day-based schedulers (e.g., every Tuesday).
//   /// _dayProcessing(myDayPlanners);
//   /// ```
//   void _dayProcessing(
//     List<ScheduledDayTimeEntity> schedulers,
//   ) {
//     for (final scheduler in schedulers) {
//       final dateRanges = <DateRangeEntity>[];
//       final List<DateTime> dates;
//       final int day;
//       final DayType dayType;

//       // Determine how to interpret the day based on its type.
//       if (scheduler.dayType == DayType.weekDay) {
//         // Convert a day name (such as 'Tuesday') into its corresponding weekday index.
//         day = WeekDay.fromName(scheduler.dayLabel).dateTimeWeekDayIndex;
//         dayType = DayType.weekDay;
//       } else {
//         // For a numeric day-of-month, attempt to parse the value as an integer.
//         day = int.tryParse(scheduler.dayLabel)!;
//         dayType = DayType.monthDay;
//       }

//       // Generate dates that match the day-based rule.
//       dates = _processDaySteps(
//         day,
//         scheduler.repeatCount,
//         dayType,
//       );

//       // Build date ranges from the generated dates based on the associated scheduled time IDs.
//       dateRanges.addAll(
//         _generateDateRanges(
//           scheduledTimeIds: scheduler.scheduledTimeIds,
//           dates: dates,
//         ),
//       );

//       // Append the newly built scheduled occurrences using the date ranges.
//       _appendGeneratedInstances(
//         dateRanges: dateRanges,
//         scheduler: scheduler,
//       );
//     }
//   }

//   /// Processes interval-based scheduling rules.
//   ///
//   /// For each interval scheduler:
//   /// 1. Generates a list of dates using the provided interval unit (such as minute, hour, day, etc.)
//   ///    by invoking [_processIntervalSteps].
//   /// 2. Constructs corresponding date ranges from these dates.
//   /// 3. Appends the generated date ranges as scheduled occurrences.
//   ///
//   /// Example:
//   /// ```dart
//   /// // Process interval schedulers (e.g., every 3 hours).
//   /// _intervalProcessing(myIntervalPlanners);
//   /// ```
//   void _intervalProcessing(
//     List<ScheduledIntervalEntity> intervals,
//   ) {
//     for (final scheduler in intervals) {
//       // Generate dates based on the interval rule.
//       final dates = _processIntervalSteps(
//         interval: scheduler.intervalUnit,
//         intervalValue: scheduler.intervalValue.toInt(),
//         repeatCount: scheduler.repeatCount,
//         consecutiveOccurrences: scheduler.consecutiveOccurrences,
//       );

//       // Convert the generated dates into date ranges based on the scheduled time IDs.
//       final dateRanges = _generateDateRanges(
//         scheduledTimeIds: scheduler.scheduledTimeIds,
//         dates: dates,
//       );

//       // Append the newly created scheduled occurrences.
//       _appendGeneratedInstances(
//         dateRanges: dateRanges,
//         scheduler: scheduler,
//       );
//     }
//   }
// }
