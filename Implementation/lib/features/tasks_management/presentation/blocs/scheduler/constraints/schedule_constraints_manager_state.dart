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

  const factory ScheduleConstraintsManagerState.fetchedAll(
      List<ScheduleConstraintsEntity> scheduleConstraintsList) = _FetchedAll;

  const factory ScheduleConstraintsManagerState.fetchedByTaskId(
      ScheduleConstraintsEntity? scheduleConstraints) = _FetchedByTaskId;

  const factory ScheduleConstraintsManagerState.deleted() = _Deleted;
}
