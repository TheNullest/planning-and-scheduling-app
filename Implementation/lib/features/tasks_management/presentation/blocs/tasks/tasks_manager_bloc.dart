import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/tasks_management/domain/params/create_task_with_sub_tasks.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/shared/create_task_with_dependencies.dart';
import 'package:zamaan/features/tasks_management/presentation/models/task_ui.dart';

part 'tasks_manager_bloc.freezed.dart';
part 'tasks_manager_event.dart';
part 'tasks_manager_state.dart';

class TasksManagerBloc extends Bloc<TasksManagerEvent, TasksManagerState> {
  TasksManagerBloc({
    required CreateTaskWithDependenciesUsecase createTaskWithSubtasksUseCase,
  })  : _createTaskWithSubTasksUsecase = createTaskWithSubtasksUseCase,
        super(const _Initial()) {
    on<TasksManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        createTaskWithDependencies: (e) async => _createTaskWithDependencies(e, emit),
      );
    });
  }

  final CreateTaskWithDependenciesUsecase _createTaskWithSubTasksUsecase;

  FutureVoid _handleStarted(Emitter<TasksManagerState> emit) async {
    emit(const TasksManagerState.initial());
  }

  FutureVoid _createTaskWithDependencies(
    _CreateTaskWithDependenciesEvent event,
    Emitter<TasksManagerState> emit,
  ) async {
    final response = await _createTaskWithSubTasksUsecase(event.taskAndSubTasks);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (success) => emit(const _TaskAndSubTasksCreated()),
    );
  }
}
