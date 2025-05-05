part of '../scheduled_instance_generator.dart';

/// An extension that provides builder methods for constructing and appending scheduled instances
/// from generated date ranges.
extension Builder on ScheduledInstanceGenerator {
  /// For a given list of [dateRanges] and a [scheduler] entity,
  /// this method builds scheduled instances and appends them to [_generatedInstances].
  ///
  /// Example:
  /// ```dart
  /// // If dateRanges contains 3 entries, three instances will be built and added.
  /// _appendGeneratedInstances(dateRanges: myDateRanges, scheduler: myScheduler);
  /// ```
  void _appendGeneratedInstances({
    required List<DateRangeEntity> dateRanges,
    required BaseEntityAbstraction scheduler,
  }) {
    // Determine the scheduler type based on the entity runtime type.
    final schedulerType = scheduler is ScheduledDayEntity
        ? SchedulerType.scheduledDay
        : SchedulerType.scheduledInterval;

    for (var sequenceNumber = 0; sequenceNumber < dateRanges.length; sequenceNumber++) {
      final dateRange = dateRanges[sequenceNumber];
      // Build a scheduled instance for this date range.
      final instance = _buildInstance(
        scheduler: scheduler,
        schedulerType: schedulerType,
        dateRange: dateRange,
        sequenceNumber: sequenceNumber + 1,
      );

      // Append it to the generated instances list.
      _generatedInstances.add(instance);
    }
  }

  /// Constructs a [ScheduledInstanceEntity] from the provided parameters.
  ///
  /// Parameters:
  /// - [scheduler]: The source scheduler entity (day, interval or constraint).
  /// - [schedulerType]: The specific type of scheduler.
  /// - [dateRange]: The date range during which the event occurs.
  /// - [sequenceNumber]: The occurrence number for ordering.
  ///
  /// Returns:
  /// - A new [ScheduledInstanceEntity] fully populated.
  ///
  /// Example:
  /// ```dart
  /// // Build a scheduled instance with the provided parameters.
  /// final instance = _buildInstance(
  ///   scheduler: myScheduler,
  ///   schedulerType: SchedulerType.scheduledDay,
  ///   dateRange: myDateRange,
  ///   sequenceNumber: 1,
  /// );
  /// ```
  ScheduledInstanceEntity _buildInstance({
    required BaseEntityAbstraction scheduler,
    required SchedulerType schedulerType,
    required DateRangeEntity dateRange,
    required int sequenceNumber,
  }) =>
      ScheduledInstanceEntity(
        id: uuidGenerator,
        userId: scheduler.userId,
        createdAt: DateTime.now(),
        description: scheduler.description,
        startDateTime: dateRange.start!,
        endDateTime: dateRange.end!,
        schedulerType: schedulerType,
        schedulerId: scheduler.id,
        sequenceNumber: sequenceNumber,
        taskStatus: TaskStatus.scheduled,
      );
}
