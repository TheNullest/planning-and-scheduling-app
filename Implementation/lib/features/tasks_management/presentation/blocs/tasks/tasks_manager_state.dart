part of 'tasks_manager_bloc.dart';

@freezed
class TasksManagerState with _$TasksManagerState {
  // Core States
  const factory TasksManagerState.initial() = _Initial;
  const factory TasksManagerState.loading() = _Loading;
  const factory TasksManagerState.successfulAction(String successMessage) = _SuccessfulAction;
  const factory TasksManagerState.failedAction(String errorMessage) = _FailedAction;

  // Tasks
  const factory TasksManagerState.taskCreated() = _TaskCreated;
  const factory TasksManagerState.fetchedTasks(List<TaskVM> tasks) = _FetchedTasks;

  // SubTasks
  const factory TasksManagerState.subTaskCreated() = _SubTaskCreated;
}
