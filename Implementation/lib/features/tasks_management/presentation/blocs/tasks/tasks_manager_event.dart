part of 'tasks_manager_bloc.dart';

@freezed
class TasksManagerEvent with _$TasksManagerEvent {
  const factory TasksManagerEvent.started() = _Started;

  const factory TasksManagerEvent.createTask({
    required TaskVM newTask,
  }) = _CreateTask;

  const factory TasksManagerEvent.createSubTask({
    required SubTaskVM newSubTask,
  }) = _CreateSubTask;

  const factory TasksManagerEvent.fetchAllTasks() = _FetchAllTasks;
}
