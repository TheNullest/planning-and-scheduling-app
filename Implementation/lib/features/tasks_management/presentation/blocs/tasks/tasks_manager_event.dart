part of 'tasks_manager_bloc.dart';

@freezed
class TasksManagerEvent with _$TasksManagerEvent {
  const factory TasksManagerEvent.started() = _Started;

  const factory TasksManagerEvent.createTaskWithDependencies({
    required CreateTaskWithDependenciesParams taskAndSubTasks,
  }) = _CreateTaskWithDependenciesEvent;
}
