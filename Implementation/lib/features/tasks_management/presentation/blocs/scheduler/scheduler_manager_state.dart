part of 'scheduler_manager_bloc.dart';

@freezed
class SchedulerManagerState with _$SchedulerManagerState {
  // Core States
  const factory SchedulerManagerState.initial() = _Initial;
  const factory SchedulerManagerState.loading() = _Loading;
  const factory SchedulerManagerState.successfulAction(String successMessage) = _SuccessfulAction;
  const factory SchedulerManagerState.failedAction(String errorMessage) = _FailedAction;

  // Scheduled Instances
  const factory SchedulerManagerState.scheduledInstancesFetched(
    List<ScheduledInstanceUI> scheduledInstances,
  ) = _ScheduledInstancesFetched;
}
