part of '../scheduled_instance_generator.dart';

/// An extension that handles processing of scheduling constraints,
/// day-based rules, and interval-based rules.
extension SchedulerProcessing on ScheduledInstanceGenerator {
  /// Processes the overall scheduling constraint.
  ///
  /// If neither day-based nor interval-based scheduling rules are provided,
  /// it builds a default scheduled instance using the overall schedule constraint.
  /// Example:
  /// ```dart
  /// // If days and intervals are both empty, this creates one default instance.
  /// _constraintProcessing();
  /// ```
  void _constraintProcessing() {
    if (days.isEmpty && intervals.isEmpty) {
      _buildInstance(
        dateRange: DateRangeEntity.fromDates(
          scheduleConstraint.startAt!,
          scheduleConstraint.endAt!,
        ),
        scheduler: scheduleConstraint,
        schedulerType: SchedulerType.schedudleConstraint,
        sequenceNumber: 0,
      );
    }
  }

  /// Handles processing of day-based scheduling rules.
  ///
  /// For each day scheduler:
  /// 1. It determines if the day is a weekday or specific day-of-month.
  /// 2. Finds all the dates that meet this criterion using [_processDatesBasedOnDay].
  /// 3. Builds corresponding date ranges.
  /// 4. Appends generated scheduled instances.
  ///
  /// Example:
  /// ```dart
  /// // Processes a list of day schedulers, e.g., every Tuesday.
  /// _dayProcessing(myDaySchedulers);
  /// ```
  void _dayProcessing(
    List<ScheduledDayEntity> schedulers,
  ) {
    for (final scheduler in schedulers) {
      final dateRanges = <DateRangeEntity>[];
      final List<DateTime> dates;
      final int day;
      final DayType dayType;

      // Decide how to interpret the day based on its type.
      if (scheduler.dayType == DayType.weekDay) {
        // Converts a day name (e.g., 'Tuesday') into its weekday index.
        day = WeekDay.fromName(scheduler.dayValue).dateTimeWeekDayIndex;
        dayType = DayType.weekDay;
      } else {
        // For month day, the day value is parsed as an integer.
        day = int.tryParse(scheduler.dayValue)!;
        dayType = DayType.monthDay;
      }

      // Generate the list of dates that match the criteria.
      dates = _processDatesBasedOnDay(
        day,
        scheduler.canRepeat,
        dayType,
      );

      // Create date ranges for all generated dates based on scheduled times.
      dateRanges.addAll(
        _generateDateRanges(
          scheduledTimeIds: scheduler.scheduledTimeIds,
          dates: dates,
        ),
      );

      // Append the newly created instances.
      _appendGeneratedInstances(
        dateRanges: dateRanges,
        scheduler: scheduler,
      );
    }
  }

  /// Handles processing of interval-based scheduling rules.
  ///
  /// For each interval scheduler:
  /// 1. It generates dates using the provided interval unit (minute, hour, day, etc.)
  ///    through [_processDatesBasedOnInterval].
  /// 2. Constructs corresponding date ranges.
  /// 3. Appends these as scheduled instances.
  ///
  /// Example:
  /// ```dart
  /// // Processes interval schedulers, e.g., every 3 hours.
  /// _intervalProcessing(myIntervalSchedulers);
  /// ```
  void _intervalProcessing(
    List<ScheduledIntervalEntity> intervals,
  ) {
    for (final scheduler in intervals) {
      final dates = _processDatesBasedOnInterval(
        scheduler.intervalUnit,
        scheduler.intervalValue.toInt(),
        scheduler.repeatCount,
      );

      final dateRanges = _generateDateRanges(
        scheduledTimeIds: scheduler.scheduledTimeIds,
        dates: dates,
      );

      _appendGeneratedInstances(
        dateRanges: dateRanges,
        scheduler: scheduler,
      );
    }
  }
}
