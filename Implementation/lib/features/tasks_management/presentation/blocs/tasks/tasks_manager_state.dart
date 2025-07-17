part of 'tasks_manager_bloc.dart';

@freezed
class TasksManagerState with _$TasksManagerState {
  // Core States
  const factory TasksManagerState.initial() = _Initial;
  const factory TasksManagerState.loading() = _Loading;
  const factory TasksManagerState.successfulAction(String successMessage) = _SuccessfulAction;
  const factory TasksManagerState.failedAction(String errorMessage) = _FailedAction;

  // Tasks
  const factory TasksManagerState.taskCreated(String taskId) = _TaskCreated;
  const factory TasksManagerState.taskDeleted(String taskId) = _TaskDeleted;
  const factory TasksManagerState.fetchedTasks({
    required List<TaskEntity> tasks,
    required List<SubTaskEntity> subTasks,
  }) = _FetchedTasks;
  const factory TasksManagerState.taskUpdated(TaskEntity task) = _TaskUpdated;

  // SubTasks
  const factory TasksManagerState.subTaskCreated(SubTaskEntity subTask) = _SubTaskCreated;
  const factory TasksManagerState.subTaskUpdated(SubTaskEntity subTask) = _SubTaskUpdated;
  const factory TasksManagerState.subTaskDeleted(String subTaskId) = _SubTaskDeleted;
}
