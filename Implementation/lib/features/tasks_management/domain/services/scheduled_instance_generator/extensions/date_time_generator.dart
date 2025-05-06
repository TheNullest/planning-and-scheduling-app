part of '../scheduled_instance_generator.dart';

/// An extension that implements the core logic of generating dates and validating them
/// against exception ranges.
extension DateTimeGenerator on ScheduledInstanceGenerator {
  /// Generates a series of dates starting from [currentDate] until either the maximum number of occurrences
  /// ([maxOccurences]) is reached or the scheduling end date is exceeded.
  ///
  /// The date is advanced using one of two mechanisms based on the scheduling strategy:
  ///
  /// • When [monthlySteps] is provided, the generator increments the month value by [monthlySteps],
  ///   which is useful for month-day (or year-based) scheduling.
  /// • Otherwise, [stepDuration] is used to add a fixed time interval (e.g., for weekday scheduling).
  ///
  /// Additionally, the [consecutiveOccurrences] parameter specifies how many consecutive occurrences should be
  /// generated starting from each computed date. For example, if [consecutiveOccurrences] is greater than 1, the
  /// same base date will be used to produce multiple consecutive occurrences (subject to the exception check)
  /// before the date is incremented.
  ///
  /// Parameters:
  /// - [maxOccurences]: The maximum number of date occurrences to generate.
  /// - [currentDate]: The starting date/time from which to begin generating dates.
  /// - [generatedDates]: A list that collects valid [DateTime] occurrences (excluding those that fall within an exception range).
  /// - [consecutiveOccurrences]: The number of consecutive occurrences to generate for each computed date.
  /// - [monthlySteps]: (Optional) The number of months to increment for month-based scheduling.
  /// - [stepDuration]: (Optional) The duration to add for each new date when using time-based scheduling (required if [monthlySteps] is null).
  void _generateDates({
    required int maxOccurences,
    required DateTime currentDate,
    required List<DateTime> generatedDates,
    required int consecutiveOccurrences,
    int? monthlySteps,
    Duration? stepDuration,
  }) {
    // Continue generating dates as long as both conditions are met:
    // 1. The current date is on or before the schedule's end date.
    // 2. The number of generated dates is less than maxOccurences.
    while (compareDates(past: currentDate, future: scheduleConstraint.endAt) <= 0 &&
        generatedDates.length < maxOccurences) {
      // For each computed date, generate [occurrenceFrequency] consecutive occurrences.
      // This helps in grouping or handling cases where several occurrences are considered to be consecutive.
      for (var occurrence = 0; occurrence < consecutiveOccurrences; occurrence++) {
        // Append the current date if it doesn't fall within any defined exception ranges.
        if (!_isExceptionDate(currentDate)) {
          generatedDates.add(currentDate);
        }

        // Increment the current date:
        // - If [monthlySteps] is provided, perform a month-based increment.
        // - Otherwise, add the fixed [stepDuration] to advance the date.
        currentDate = monthlySteps != null
            ? currentDate.copyWith(
                month: currentDate.month + monthlySteps,
                day: currentDate.day,
              )
            : currentDate.add(stepDuration!);
      }
    }
  }

  /// Checks if a given [DateRangeEntity] overlaps with any pre-existing scheduled instance.
  ///
  /// Returns:
  /// - `true` if there is any interference; otherwise, `false`.
  bool _isThereInterference(DateRangeEntity date) {
    return scheduledInstances.any(
      (instance) =>
          instance.startDateTime.overlapsWith(startDate: date.start!, endDate: date.end!) ||
          instance.endDateTime.overlapsWith(startDate: date.start!, endDate: date.end!),
    );
  }

  /// Generates date ranges based on a list of dates and the provided scheduled time IDs.
  ///
  /// For each date, it checks the [dayTimeRanges] and builds a [DateRangeEntity]
  /// if there is no interference.
  ///
  /// Parameters:
  /// - [scheduledTimeIds]: IDs corresponding to valid time ranges.
  /// - [dates]: List of dates for which date ranges should be generated.
  ///
  /// Returns:
  /// - A list of [DateRangeEntity] objects.
  List<DateRangeEntity> _generateDateRanges({
    required List<String> scheduledTimeIds,
    required List<DateTime> dates,
  }) {
    final dateRanges = <DateRangeEntity>[];
    for (final date in dates) {
      // Filter time ranges that match any of the scheduled time IDs and do not conflict.
      final scheduledTimes = dayTimeRanges
          .where(
            (timeRange) => scheduledTimeIds.any(
              (timeId) =>
                  timeRange.id == timeId &&
                  !_isThereInterference(
                    DateRangeEntity.fromTimeRange(timeRange, date),
                  ),
            ),
          )
          .toList();
      // For each matching time range, create a date range.
      for (final timeRange in scheduledTimes) {
        dateRanges.add(
          DateRangeEntity.fromTimeRange(timeRange, date),
        );
      }
    }
    return dateRanges;
  }

  /// Determines if a specific [date] falls within any exception date ranges.
  ///
  /// Returns:
  /// - `true` if the date is an exception; otherwise `false`.
  bool _isExceptionDate(DateTime date) =>
      exceptionDateRanges.any((dateRange) => dateRange.overlapsWith(date));
}
