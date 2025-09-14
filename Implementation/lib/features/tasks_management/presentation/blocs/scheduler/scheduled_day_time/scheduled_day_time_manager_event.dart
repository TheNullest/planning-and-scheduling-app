// lib/features/tasks_management/presentation/bloc/scheduledDayTime_manager_event.dart

part of 'scheduled_day_time_manager_bloc.dart';

@freezed
class ScheduledDayTimesManagerEvent with _$ScheduledDayTimesManagerEvent {
  /// Load *all* scheduled days (e.g. for a dashboard list).
  const factory ScheduledDayTimesManagerEvent.getScheduledDayTimes() = _GetScheduledDayTimes;

  /// Load the schedule constraints for a given task.
  const factory ScheduledDayTimesManagerEvent.getScheduledDayTimesByTaskId({
    required String taskId,
  }) = _GetBatchScheduledDayTimesByTaskId;

  /// Create a batch of new scheduled days.
  const factory ScheduledDayTimesManagerEvent.createBatchScheduledDayTimes({
    required List<ScheduledDayTimeEntity> days,
  }) = _CreateBatchScheduledDayTimes;

  /// Updates a batch of existing scheduled day times.
  ///
  /// This event allows you to simultaneously update multiple `ScheduledDayTimeEntity`
  /// instances and delete specific day times by their identifiers.
  ///
  /// - [days]: A list of `ScheduledDayTimeEntity` objects to be updated.
  /// - [deleteDayTimes]: A list of day time IDs (as `String`) to be deleted.
  ///
  /// Use this event to efficiently manage bulk updates and deletions of scheduled day times
  /// within the scheduler, reducing the need for multiple individual update or delete events.
  /// Update a batch of existing scheduled days.
  const factory ScheduledDayTimesManagerEvent.updateScheduledDayTimes({
    required List<ScheduledDayTimeEntity> days,
    required List<String> deleteDayTimes,
  }) = _UpdateScheduledDayTimes;

  const factory ScheduledDayTimesManagerEvent.deleteBatch(List<String> ids) =
      _DeleteBatchScheduledDayTimes;
}
