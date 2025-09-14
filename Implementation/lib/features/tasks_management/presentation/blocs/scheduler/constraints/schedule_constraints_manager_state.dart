part of 'schedule_constraints_manager_bloc.dart';

@freezed
class ScheduleConstraintsManagerState with _$ScheduleConstraintsManagerState {
  // Core States
  const factory ScheduleConstraintsManagerState.initial() = _Initial;
  const factory ScheduleConstraintsManagerState.loading() = _Loading;

  const factory ScheduleConstraintsManagerState.failedAction(String errorMessage) =
      _FailedActionState;

  const factory ScheduleConstraintsManagerState.created(String id) = _Created;

  const factory ScheduleConstraintsManagerState.updated(
      ScheduleConstraintsEntity scheduleConstraints) = _Updated;

  const factory ScheduleConstraintsManagerState.loadedAll(
      List<ScheduleConstraintsEntity> scheduleConstraintsList) = _GetedAll;

  const factory ScheduleConstraintsManagerState.loadedByTaskId(
      ScheduleConstraintsEntity? scheduleConstraints) = _GetedByTaskId;

  const factory ScheduleConstraintsManagerState.deleted() = _Deleted;
}
