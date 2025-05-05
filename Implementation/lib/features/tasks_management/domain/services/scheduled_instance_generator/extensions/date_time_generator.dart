part of '../scheduled_instance_generator.dart';

/// An extension that implements the core logic of generating dates and validating them
/// against exceptions or interferences.
extension DateTimeGenerator on ScheduledInstanceGenerator {
  /// Generates a series of dates starting from [pointDate] at intervals [stepDuration]
  /// until either [maxOccurences] is reached or the scheduling end date is passed.
  ///
  /// Parameters:
  /// - [maxOccurences]: Maximum number of date occurrences to generate.
  /// - [pointDate]: The starting date/time.
  /// - [generatedDates]: Reference list in which to append valid dates.
  /// - [stepDuration]: Duration to add for each new date (required unless [targetDay] is set).
  /// - [targetDay]: (Optional) For month-based scheduling so that the new date has a specific day.
  void _generateDates({
    required int maxOccurences,
    required DateTime pointDate,
    required List<DateTime> generatedDates,
    Duration? stepDuration,
    int? targetDay,
  }) {
    late var currentDate = pointDate;
    // Continue generating dates until one of the termination conditions is met.
    while (compareDates(past: currentDate, future: scheduleConstraint.endAt) <= 0 &&
        generatedDates.length < maxOccurences) {
      // Only add the date if it is not within an exception date range.
      if (!_isExceptionDate(currentDate)) {
        generatedDates.add(currentDate);
      }

      // Move to the next date either by targeting a specific day-of-month or by adding stepDuration.
      currentDate = targetDay != null
          ? currentDate.copyWith(month: currentDate.month + 1, day: targetDay)
          : currentDate.add(stepDuration!);
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
