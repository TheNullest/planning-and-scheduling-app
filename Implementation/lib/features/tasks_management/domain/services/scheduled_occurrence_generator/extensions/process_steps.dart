part of '../scheduled_occurrence_generator.dart';

/// An extension that encapsulates the logic to process scheduling steps
/// based on either day‑ or interval‑based rules.
extension ProcessSteps on ScheduledOccurrenceGenerator {
  // Static constants defining time durations and occurrence limits.
  static const Duration weeklyStepDuration = Duration(days: 7);
  static const Duration yearlyStepDuration = Duration(days: daysInYear);
  static const int monthlyStep = 1;
  static const int yearlyStep = 1;
  static const int maxMonthDayOccurrences = 120;
  static const int maxWeekDayOccurrences = 520;
  static const int maxYearOccurrences = 10;
  static const int maxInstanceCount = 500;
  static const int daysInYear = 365;

  /// Generates a sequence of dates based on a specific day criterion,
  /// which can represent either a weekday (e.g. Tuesday) or a specific day-of-month.
  ///
  /// For **weekday scheduling**:
  ///   - The starting date is advanced day-by-day until it reaches the target weekday.
  ///   - A fixed weekly step duration is used to generate subsequent dates.
  ///
  /// For **month-day scheduling**:
  ///   - The starting date is adjusted to the next occurrence of the specified day-of-month.
  ///     If the current day is on or past the target, it moves to the next month.
  ///   - Instead of a fixed duration, a monthly step increment is used.
  ///
  /// Parameters:
  /// - [day]: The target day value, representing either a weekday index or a numerical day-of-month.
  /// - [canRepeat]: Indicates whether the event is allowed to repeat beyond the first occurrence.
  /// - [dayType]: Specifies whether [day] is a weekday (DayType.weekDay) or a day-of-month (DayType.monthDay).
  ///
  /// Returns:
  /// - A list of [DateTime] instances satisfying the scheduling criteria.
  ///
  /// Example:
  /// ```dart
  /// // Generate dates for every Tuesday (weekday scheduling).
  /// final tuesdayDates = _processDaySteps(2, true, DayType.weekDay);
  /// ```
  List<DateTime> _processDaySteps(
    int day,
    bool canRepeat,
    DayType dayType,
  ) {
    // Start with the initial point date.
    late var currentDate = _pointDate;
    final generatedDates = <DateTime>[];

    // Adjust currentDate to match the target day.
    if (dayType == DayType.weekDay) {
      // For weekday scheduling, increment one day at a time until the weekday matches.
      while (currentDate.weekday != day) {
        currentDate = currentDate.add(const Duration(days: 1));
      }
    } else {
      // For month-day scheduling:
      // If the current day is on or past the target day, move to the next month;
      // otherwise, stay in the current month.
      currentDate = _pointDate.copyWith(
        month: _pointDate.day >= day ? _pointDate.month + 1 : _pointDate.month,
        day: day,
      );
    }

    // Determine how dates are incremented:
    // - For weekday scheduling, apply a fixed weekly duration.
    // - For month-day scheduling, use a monthly step (i.e. increment month by 1).
    final stepDuration = dayType == DayType.weekDay ? weeklyStepDuration : null;
    final monthlySteps = stepDuration == null ? 1 : null;

    // Set the maximum number of occurrences based on whether repetition is enabled.
    final maxOccurences = canRepeat
        ? (dayType == DayType.monthDay ? maxMonthDayOccurrences : maxWeekDayOccurrences)
        : 1;

    // Generate the sequence of dates using the shared helper.
    _generateDates(
      maxOccurences: maxOccurences,
      currentDate: currentDate,
      generatedDates: generatedDates,
      stepDuration: stepDuration,
      monthlySteps: monthlySteps,
      // For day-based scheduling this value is typically 1.
      consecutiveOccurrences: 1,
    );

    return generatedDates;
  }

  /// Generates a sequence of dates based on an interval unit.
  ///
  /// This method supports interval units such as minutes, hours, days, and weeks by using
  /// a fixed Duration, as well as month or year intervals by applying a monthly step count.
  ///
  /// Parameters:
  /// - [interval]: The interval unit (e.g. minute, hour, day, week, month, year).
  /// - [intervalValue]: The numeric magnitude defining the interval.
  /// - [consecutiveOccurrences]: The number of consecutive occurrences to generate for each computed base date.
  /// - [repeatCount]: (Optional) Overrides the default maximum occurrences if provided.
  ///
  /// Returns:
  /// - A list of [DateTime] instances generated using the specified interval rule.
  ///
  /// Example:
  /// ```dart
  /// // Generate dates for an event repeating every 2 days,
  /// // with 3 consecutive occurrences for each base date.
  /// final intervalDates = _processIntervalSteps(
  ///   interval: IntervalUnit.day,
  ///   intervalValue: 2,
  ///   consecutiveOccurrences: 3,
  ///   repeatCount: null,
  /// );
  /// ```
  List<DateTime> _processIntervalSteps({
    required IntervalUnit interval,
    required int intervalValue,
    required int consecutiveOccurrences,
    int? repeatCount,
  }) {
    final generatedDates = <DateTime>[];

    // Map each interval unit to:
    // [0]: The Duration increment (if applicable), or null if month-based increments are used.
    // [1]: The default maximum occurrence count.
    // [2]: The monthly step count for month- or year-based intervals (if applicable).
    final intervalDurations = {
      IntervalUnit.minutes: [
        Duration(minutes: intervalValue),
        maxInstanceCount,
      ],
      IntervalUnit.hours: [
        Duration(hours: intervalValue),
        maxInstanceCount,
      ],
      IntervalUnit.days: [
        Duration(days: intervalValue),
        maxInstanceCount,
      ],
      IntervalUnit.weeks: [
        weeklyStepDuration * intervalValue,
        maxWeekDayOccurrences,
      ],
      IntervalUnit.months: [
        null, // For month-based intervals, a fixed Duration isn't applicable.
        maxMonthDayOccurrences,
        monthlyStep * intervalValue,
      ],
      IntervalUnit.years: [
        null, // For year-based intervals, a fixed Duration isn't applicable.
        maxMonthDayOccurrences,
        monthlyStep * intervalValue,
      ],
    };

    // Extract the corresponding values from the mapping.
    final stepDuration = intervalDurations[interval]![0] as Duration?;
    final maxOccurences = intervalDurations[interval]![1]! as int;
    final monthlySteps =
        intervalDurations[interval]!.length > 2 ? intervalDurations[interval]![2] as int? : null;

    // Generate dates using either the fixed Duration or the monthly step approach.
    _generateDates(
      maxOccurences: repeatCount ?? maxOccurences,
      currentDate: _pointDate,
      generatedDates: generatedDates,
      stepDuration: stepDuration,
      monthlySteps: monthlySteps,
      consecutiveOccurrences: consecutiveOccurrences,
    );

    return generatedDates;
  }
}
