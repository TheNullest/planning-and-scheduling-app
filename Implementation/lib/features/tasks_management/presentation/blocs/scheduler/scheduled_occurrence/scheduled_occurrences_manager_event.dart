part of 'scheduled_occurrences_manager_bloc.dart';

@freezed
class ScheduledOccurrencesManagerEvent with _$ScheduledOccurrencesManagerEvent {
  const factory ScheduledOccurrencesManagerEvent.started() = _Started;

  // Fetch events
  const factory ScheduledOccurrencesManagerEvent.getByTaskId(String taskId) = _GetByTaskId;
  const factory ScheduledOccurrencesManagerEvent.getByDate(DateTime date) = _GetByDate;
  const factory ScheduledOccurrencesManagerEvent.getBySchedulerIds(List<String> schedulerIds) =
      _GetBySchedulerIds;
  const factory ScheduledOccurrencesManagerEvent.getUpcomingByTaskId(String taskId) =
      _GetUpcomingByTaskId;

  // Batch operation events
  const factory ScheduledOccurrencesManagerEvent.createBatch(
      List<ScheduledOccurrenceEntity> occurrences) = _CreateBatch;
  const factory ScheduledOccurrencesManagerEvent.updateBatch(
      List<ScheduledOccurrenceEntity> occurrences) = _UpdateBatch;
  const factory ScheduledOccurrencesManagerEvent.deleteBatch(List<String> occurrenceIds) =
      _DeleteBatch;
  const factory ScheduledOccurrencesManagerEvent.deleteBySchedulerIds(List<String> schedulerIds) =
      _DeleteBySchedulerIds;
  const factory ScheduledOccurrencesManagerEvent.deleteByTaskId(String taskId) = _DeleteByTaskId;
}
