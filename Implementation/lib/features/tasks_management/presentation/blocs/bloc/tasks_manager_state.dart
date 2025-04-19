part of 'tasks_manager_bloc.dart';

@freezed
class TasksManagerState with _$TasksManagerState {
  const factory TasksManagerState.initial() = _Initial;
  const factory TasksManagerState.loading() = _Loading;
  const factory TasksManagerState.taskAndSubTasksCreated() = _TaskAndSubTasksCreated;
  const factory TasksManagerState.creatingFailed(String errorMessage) = _CreatingFailed;
}
