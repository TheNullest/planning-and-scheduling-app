part of 'scheduler_manager_bloc.dart';

@freezed
class SchedulerManagerEvent with _$SchedulerManagerEvent {
  const factory SchedulerManagerEvent.started() = _Started;
    const factory SchedulerManagerEvent.fetchScheduledInstancesByDay(DateTime date) =
      _FetchScheduledInstancesByDay;
}