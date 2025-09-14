part of '../scheduled_occurrence_generator.dart';

/// An extension that provides builder methods for constructing and appending scheduled occurrences
/// from generated date ranges.
extension Builder on ScheduledOccurrenceGenerator {
  /// For a given list of [dateRanges] and a [scheduler] entity,
  /// this method builds scheduled occurrences and appends them to [_generatedInstances].
  ///
  /// Example:
  /// ```dart
  /// // If dateRanges contains 3 entries, three instances will be built and added.
  /// _appendGeneratedInstances(dateRanges: myDateRanges, scheduler: myPlanner);
  /// ```
  void _appendGeneratedInstances({
    required List<DateRangeEntity> dateRanges,
    required BaseEntityAbstraction scheduler,
  }) {
    // Determine the scheduler type based on the entity runtime type.
    final schedulerType = scheduler is ScheduledDayTimeEntity
        ? ScheduleType.recurringMonthDays
        : ScheduleType.recurringIntervals;

    for (var sequenceNumber = 0; sequenceNumber < dateRanges.length; sequenceNumber++) {
      final dateRange = dateRanges[sequenceNumber];
      // Build a scheduled occurrence for this date range.
      final instance = _buildInstance(
          scheduler: scheduler,
          schedulerType: schedulerType,
          dateRange: dateRange,
          sequenceNumber: sequenceNumber + 1,
          taskId: scheduleConstraint.taskId,
          timeMode: ScheduledTimeMode.fixed);

      // Append it to the generated instances list.
      _generatedInstances.add(instance);
    }
  }

  /// Constructs a [ScheduledOccurrenceEntity] from the provided parameters.
  ///
  /// This method is responsible for creating a fully populated instance of
  /// [ScheduledOccurrenceEntity] using the provided scheduler, scheduler type,
  /// date range, sequence number, and task ID. It ensures that all required
  /// fields are set appropriately.
  ///
  /// Parameters:
  /// - [taskId]: The unique identifier of the task associated with this instance.
  /// - [scheduler]: The source scheduler entity, which can be a day, interval, or constraint.
  /// - [schedulerType]: The specific type of scheduler, such as [ScheduleType.scheduledDayTime]
  ///   or [ScheduleType.scheduledInterval].
  /// - [dateRange]: The date range during which the event occurs. It includes the start
  ///   and end times.
  /// - [sequenceNumber]: The occurrence number for ordering the instances.
  ///
  /// Returns:
  /// - A new [ScheduledOccurrenceEntity] that is fully populated with the provided parameters.
  ///
  /// Example:
  /// ```dart
  /// // Build a scheduled occurrence with the provided parameters.
  /// final instance = _buildInstance(
  ///   taskId: 'task123',
  ///   scheduler: myPlanner,
  ///   schedulerType: SchedulerType.scheduledDayTime,
  ///   dateRange: myDateRange,
  ///   sequenceNumber: 1,
  /// );
  /// ```
  ScheduledOccurrenceEntity _buildInstance({
    required String taskId,
    required BaseEntityAbstraction scheduler,
    required ScheduleType schedulerType,
    required DateRangeEntity dateRange,
    required int sequenceNumber,
    required ScheduledTimeMode timeMode,
  }) =>
      ScheduledOccurrenceEntity(
          id: uuidGenerator,
          userId: scheduler.userId,
          createdAt: DateTime.now(),
          description: scheduler.description,
          startDateTime: dateRange.startDate!,
          endDateTime: dateRange.endDate!,
          schedulerType: schedulerType,
          schedulerId: scheduler.id,
          sequenceNumber: sequenceNumber,
          occurrenceStatus: OccurrenceStatus.scheduled,
          taskId: taskId,
          timeMode: timeMode);
}
