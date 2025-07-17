part of 'schedule_constraints_manager_bloc.dart';

@freezed
class ScheduleConstraintsManagerEvent with _$ScheduleConstraintsManagerEvent {
  const factory ScheduleConstraintsManagerEvent.started() = _Started;
  const factory ScheduleConstraintsManagerEvent.create(
      ScheduleConstraintsEntity scheduleConstraints) = _Create;

  const factory ScheduleConstraintsManagerEvent.update(
      ScheduleConstraintsEntity scheduleConstraints) = _Update;

  const factory ScheduleConstraintsManagerEvent.fetchAll() = _FetchAll;

  const factory ScheduleConstraintsManagerEvent.fetchByTaskId(String id) = _FetchByTaskId;

  const factory ScheduleConstraintsManagerEvent.delete(String id) = _Delete;
}
