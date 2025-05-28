part of 'tasks_manager_bloc.dart';

@freezed
class TasksManagerEvent with _$TasksManagerEvent {
  const factory TasksManagerEvent.started() = _Started;

  // Tasks
  const factory TasksManagerEvent.fetchActiveTasks() = _FetchActiveTasks;

  const factory TasksManagerEvent.createTask({
    required TaskEntity newTask,
  }) = _CreateTask;

  const factory TasksManagerEvent.deleteTask({
    required String taskId,
  }) = _DeleteTask;

  const factory TasksManagerEvent.updateTask({
    required TaskEntity task,
  }) = _UpdateTask;

  // SubTasks
  const factory TasksManagerEvent.createSubTask({
    required SubTaskEntity newSubTask,
  }) = _CreateSubTask;

  const factory TasksManagerEvent.deleteBatchSubTasksByTaskId({
    required String taskId,
  }) = _DeleteBatchSubTasksByTaskId;

  const factory TasksManagerEvent.updateSubTask({
    required SubTaskEntity subTask,
  }) = _UpdateSubTask;

  const factory TasksManagerEvent.deleteSubTask({
    required String subTaskId,
  }) = _DeleteSubTask;
}
