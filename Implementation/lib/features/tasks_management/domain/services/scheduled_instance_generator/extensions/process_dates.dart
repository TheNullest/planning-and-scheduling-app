part of '../scheduled_instance_generator.dart';

/// An extension that encapsulates the logic to process dates based on day or interval rules.
extension ProcessDates on ScheduledInstanceGenerator {
  /// Generates dates based on a specific day (weekday or day-of-month).
  ///
  /// Parameters:
  /// - [day]: Target day number (for weekday or month day).
  /// - [canRepeat]: Indicates if the event can repeat beyond the first occurrence.
  /// - [dayType]: Specifies whether the day is a weekday or a month day.
  ///
  /// Returns:
  /// - A list of [DateTime] instances matching the criteria.
  ///
  /// Example:
  /// ```dart
  /// // Generate dates for every Tuesday (weekday scheduling).
  /// final tuesdayDates = _processDatesBasedOnDay(2, true, DayType.weekDay);
  /// ```
  List<DateTime> _processDatesBasedOnDay(
    int day,
    bool canRepeat,
    DayType dayType,
  ) {
    late var currentDate = _pointDate;
    final generatedDates = <DateTime>[];

    // Advance currentDate until it matches the specific day.
    while (dayType == DayType.monthDay ? currentDate.day != day : currentDate.weekday != day) {
      currentDate = currentDate.add(const Duration(days: 1));
    }

    // Define the step duration: monthly if day-of-month; weekly if weekday.
    final stepDuration = dayType == DayType.monthDay
        ? ScheduledInstanceGenerator.monthlyStepDuration
        : ScheduledInstanceGenerator.weeklyStepDuration;

    // Determine the maximum number of occurrences.
    final maxOccurences = canRepeat
        ? dayType == DayType.monthDay
            ? ScheduledInstanceGenerator.maxMonthDayOccurrences
            : ScheduledInstanceGenerator.maxWeekDayOccurrences
        : 1;

    // For month day scheduling, enforce the specific day number.
    final targetDay = dayType == DayType.monthDay ? day : null;

    // Generate dates using the helper method.
    _generateDates(
      maxOccurences: maxOccurences,
      pointDate: _pointDate,
      generatedDates: generatedDates,
      stepDuration: stepDuration,
      targetDay: targetDay,
    );

    return generatedDates;
  }

  /// Generates dates based on an interval unit.
  ///
  /// Parameters:
  /// - [interval]: The interval unit (minute, hour, day, week, month, year).
  /// - [intervalValue]: The numeric value for the interval.
  /// - [repeatCount]: Optional repeat count to override the maximum occurrences.
  ///
  /// Returns:
  /// - A list of generated [DateTime] instances calculated based on the interval.
  ///
  /// Example:
  /// ```dart
  /// // Generate dates for an event repeating every 2 days.
  /// final intervalDates = _processDatesBasedOnInterval(IntervalUnit.day, 2, null);
  /// ```
  List<DateTime> _processDatesBasedOnInterval(
    IntervalUnit interval,
    int intervalValue,
    int? repeatCount,
  ) {
    final generatedDates = <DateTime>[];

    // Map each interval unit to its corresponding duration and maximum
    // occurrence count.
    final intervalDurations = {
      IntervalUnit.minute: [
        Duration(minutes: intervalValue),
        ScheduledInstanceGenerator.maxInstanceCount,
      ],
      IntervalUnit.hour: [
        Duration(hours: intervalValue),
        ScheduledInstanceGenerator.maxInstanceCount,
      ],
      IntervalUnit.day: [
        Duration(days: intervalValue),
        ScheduledInstanceGenerator.maxInstanceCount,
      ],
      IntervalUnit.week: [
        ScheduledInstanceGenerator.weeklyStepDuration * intervalValue,
        ScheduledInstanceGenerator.maxWeekDayOccurrences,
      ],
      IntervalUnit.month: [
        ScheduledInstanceGenerator.monthlyStepDuration * intervalValue,
        ScheduledInstanceGenerator.maxMonthDayOccurrences,
      ],
      IntervalUnit.year: [ScheduledInstanceGenerator.yearlyStepDuration * intervalValue, 5],
    };

    final maxOccurences = intervalDurations[interval]![1] as int;
    final stepDuration = intervalDurations[interval]![0] as Duration;

    // Use the generated duration and occurrence count (or repeatCount if provided)
    // to generate all dates.
    _generateDates(
      maxOccurences: repeatCount ?? maxOccurences,
      pointDate: _pointDate,
      generatedDates: generatedDates,
      stepDuration: stepDuration,
    );

    return generatedDates;
  }
}
