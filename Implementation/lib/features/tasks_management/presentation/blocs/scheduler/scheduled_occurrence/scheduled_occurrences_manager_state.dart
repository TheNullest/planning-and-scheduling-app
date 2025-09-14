part of 'scheduled_occurrences_manager_bloc.dart';

@freezed
class ScheduledOccurrencesManagerState with _$ScheduledOccurrencesManagerState {
  // Initial state
  const factory ScheduledOccurrencesManagerState.initial() = _Initial;

  // Loading states
  const factory ScheduledOccurrencesManagerState.loading() = _Loading;

  // Success states for load operations
  const factory ScheduledOccurrencesManagerState.loadByTaskIdSuccess({
    required List<ScheduledOccurrenceEntity> occurrences,
  }) = _LoadByTaskIdSuccess;

  const factory ScheduledOccurrencesManagerState.loadByDateSuccess({
    required List<ScheduledOccurrenceEntity> occurrences,
  }) = _LoadByDateSuccess;

  const factory ScheduledOccurrencesManagerState.loadBySchedulerIdsSuccess({
    required List<ScheduledOccurrenceEntity> occurrences,
  }) = _LoadBySchedulerIdsSuccess;

  const factory ScheduledOccurrencesManagerState.loadUpcomingByTaskIdSuccess({
    required List<ScheduledOccurrenceEntity> occurrences,
  }) = _LoadUpcomingByTaskIdSuccess;

  // Failure states for load operations
  const factory ScheduledOccurrencesManagerState.loadByTaskIdFailure({
    required String error,
  }) = _LoadByTaskIdFailure;

  const factory ScheduledOccurrencesManagerState.loadByDateFailure({
    required String error,
  }) = _LoadByDateFailure;

  const factory ScheduledOccurrencesManagerState.loadBySchedulerIdsFailure({
    required String error,
  }) = _LoadBySchedulerIdsFailure;

  const factory ScheduledOccurrencesManagerState.loadUpcomingByTaskIdFailure({
    required String error,
  }) = _LoadUpcomingByTaskIdFailure;

  // Operation in progress states
  const factory ScheduledOccurrencesManagerState.inProgress() = _InProgress;

  // Operation success states
  const factory ScheduledOccurrencesManagerState.createBatchSuccess({
    required String message,
  }) = _CreateBatchSuccess;

  const factory ScheduledOccurrencesManagerState.updateBatchSuccess({
    required String message,
  }) = _UpdateBatchSuccess;

  const factory ScheduledOccurrencesManagerState.deleteBatchSuccess({
    required List<String> ids,
  }) = _DeleteBatchSuccess;

  const factory ScheduledOccurrencesManagerState.deleteBySchedulerIdsSuccess({
    required String message,
  }) = _DeleteBySchedulerIdsSuccess;

  const factory ScheduledOccurrencesManagerState.deleteByTaskIdSuccess({
    required String message,
  }) = _DeleteByTaskIdSuccess;

  // Operation failure states
  const factory ScheduledOccurrencesManagerState.createBatchFailure({
    required String error,
  }) = _CreateBatchFailure;

  const factory ScheduledOccurrencesManagerState.updateBatchFailure({
    required String error,
  }) = _UpdateBatchFailure;

  const factory ScheduledOccurrencesManagerState.deleteBatchFailure({
    required String error,
  }) = _DeleteBatchFailure;

  const factory ScheduledOccurrencesManagerState.deleteBySchedulerIdsFailure({
    required String error,
  }) = _DeleteBySchedulerIdsFailure;

  const factory ScheduledOccurrencesManagerState.deleteByTaskIdFailure({
    required String error,
  }) = _DeleteByTaskIdFailure;
}
