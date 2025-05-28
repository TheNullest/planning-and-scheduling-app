part of 'schedulers_manager_bloc.dart';

@freezed
class SchedulerManagerState with _$SchedulerManagerState {
  // Core States
  const factory SchedulerManagerState.initial() = _Initial;
  const factory SchedulerManagerState.loading() = _Loading;
  const factory SchedulerManagerState.successfulAction(String successMessage) =
      _SuccessfulActionState;
  const factory SchedulerManagerState.failedAction(String errorMessage) = _FailedActionState;

  // Scheduled Instances
  // const factory SchedulerManagerState.schedulersFetched(
  //   List<SchedulersAggregateVM> schedulersAggregates,
  // ) = _ScheduledInstancesFetchedState;

  const factory SchedulerManagerState.instancesGeneratedAndCreated(
    List<ScheduledInstanceEntity> instances,
  ) = _InstancesGeneratedAndCreated;
}
