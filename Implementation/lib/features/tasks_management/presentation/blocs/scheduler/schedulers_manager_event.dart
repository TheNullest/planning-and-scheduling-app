part of 'schedulers_manager_bloc.dart';

@freezed
class SchedulerManagerEvent with _$SchedulerManagerEvent {
  const factory SchedulerManagerEvent.started() = _Started;
  const factory SchedulerManagerEvent.fetchScheduledInstancesByDay(DateTime date) =
      _FetchScheduledInstancesByDayEvent;

  const factory SchedulerManagerEvent.createBatchSchedulers(SchedulersAggregateEntity params) =
      _CreateBatchSchedulersEvent;
  const factory SchedulerManagerEvent.generateAndCreateInstances(GenerateInstanceParams params) =
      _GenerateAndCreateInstances;
}
