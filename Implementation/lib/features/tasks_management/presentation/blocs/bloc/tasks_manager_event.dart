part of 'tasks_manager_bloc.dart';

@freezed
class TasksManagerEvent with _$TasksManagerEvent {
  const factory TasksManagerEvent.started() = _Started;

  const factory TasksManagerEvent.createTaskWithSubTasks({
    required CreateTaskWithSubTasksParams taskAndSubTasks,
  }) = _CreateTaskWithSubTasksEvent;

  const factory TasksManagerEvent.fetchScheduledInstancesByDay(DateTime date) = _FetchScheduledInstancesByDay;
}
