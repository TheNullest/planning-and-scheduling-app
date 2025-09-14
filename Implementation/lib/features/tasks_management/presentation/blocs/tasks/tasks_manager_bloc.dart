import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/create_sub_task_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/delete_batch_sub_tasks_by_task_id_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/delete_sub_task_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/get_sub_tasks_by_task_ids_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/update_sub_task_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/create_task_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/delete_task_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/get_tasks_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/update_task_use_case.dart';

part 'tasks_manager_bloc.freezed.dart';
part 'tasks_manager_event.dart';
part 'tasks_manager_state.dart';

class TasksManagerBloc extends Bloc<TasksManagerEvent, TasksManagerState> {
  TasksManagerBloc({
    required CreateTaskUseCase createTaskUseCase,
    required CreateSubTaskUseCase createSubTaskUseCase,
    required DeleteTaskUseCase deleteTaskUseCase,
    required DeleteBatchSubTasksByTaskIdUseCase deleteSubTasksByTaskIdUseCase,
    required DeleteSubTaskUseCase deleteSubTaskUseCase,
    required UpdateTaskUseCase updateTaskUseCase,
    required UpdateSubTaskUseCase updateSubTaskUseCase,
    required GetTasksUseCase getTasksUseCase,
    required GetSubTasksByTaskIdsUseCase getSubTasksUseCase,
  })  : _createTaskUseCase = createTaskUseCase,
        _createSubTaskUseCase = createSubTaskUseCase,
        _deleteTaskUseCase = deleteTaskUseCase,
        _deleteSubTaskUseCase = deleteSubTaskUseCase,
        _deleteSubTasksByTaskIdUseCase = deleteSubTasksByTaskIdUseCase,
        _updateTaskUseCase = updateTaskUseCase,
        _updateSubTaskUseCase = updateSubTaskUseCase,
        _getTasksUseCase = getTasksUseCase,
        _getSubTasksByIdsUseCase = getSubTasksUseCase,
        super(const _Initial()) {
    on<TasksManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        createTask: (e) async => _createTask(e, emit),
        createSubTask: (e) async => _createSubTask(e, emit),
        deleteTask: (e) async => _deleteTask(e, emit),
        deleteSubTask: (e) async => _deleteSubTask(e, emit),
        deleteSubTasksByTaskId: (e) async => _deleteSubTasks(e, emit),
        updateTask: (e) async => _updateTask(e, emit),
        getActiveTasks: (e) async => _getActiveTasks(e, emit),
        updateSubTask: (e) async => _updateSubTask(e, emit),
      );
    });
  }

  final CreateTaskUseCase _createTaskUseCase;
  final CreateSubTaskUseCase _createSubTaskUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;
  final DeleteBatchSubTasksByTaskIdUseCase _deleteSubTasksByTaskIdUseCase;
  final DeleteSubTaskUseCase _deleteSubTaskUseCase;
  final UpdateTaskUseCase _updateTaskUseCase;
  final UpdateSubTaskUseCase _updateSubTaskUseCase;
  final GetTasksUseCase _getTasksUseCase;
  final GetSubTasksByTaskIdsUseCase _getSubTasksByIdsUseCase;

  FutureVoid _handleStarted(Emitter<TasksManagerState> emit) async {
    emit(const TasksManagerState.loading());
    emit(const TasksManagerState.initial());
    await _getActiveTasks(const _GetActiveTasks(), emit);
    return;
  }

  FutureVoid _createTask(
    _CreateTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final tasksResponse = await _createTaskUseCase(event.newTask);

    if (tasksResponse.isLeft()) {
      final failure = tasksResponse.swap().getOrElse(() => throw Exception());
      emit(TasksManagerState.failedAction(failure.message));
    }

    final taskId = tasksResponse.getOrElse(() => '');
    emit(_TaskCreated(taskId));

    await _getActiveTasks(const _GetActiveTasks(), emit);
    return;
  }

  FutureVoid _createSubTask(
    _CreateSubTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    final response = await _createSubTaskUseCase(event.newSubTask);
    emit(const TasksManagerState.loading());
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (subTaskId) {
        emit(_SubTaskCreated(event.newSubTask));
      },
    );
    await _getActiveTasks(const _GetActiveTasks(), emit);
    return;
  }

  FutureVoid _deleteTask(
    _DeleteTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _deleteTaskUseCase(event.taskId);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (_) {
        emit(_TaskDeleted(event.taskId));
      },
    );

    await _deleteSubTasks(
      _DeleteBatchSubTasksByTaskId(taskId: event.taskId),
      emit,
    );
    return;
  }

  FutureVoid _deleteSubTask(
    _DeleteSubTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _deleteSubTaskUseCase(event.subTaskId);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (taskId) {
        emit(_SubTaskDeleted(event.subTaskId));
      },
    );
    await _getActiveTasks(const _GetActiveTasks(), emit);
    return;
  }

  FutureVoid _deleteSubTasks(
    _DeleteBatchSubTasksByTaskId event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _deleteSubTasksByTaskIdUseCase(event.taskId);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (taskId) {
        emit(const _SuccessfulAction(''));
      },
    );
    await _getActiveTasks(const _GetActiveTasks(), emit);
    return;
  }

  FutureVoid _updateTask(
    _UpdateTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _updateTaskUseCase(event.task);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (_) {
        emit(TasksManagerState.taskUpdated(event.task));
      },
    );
    await _getActiveTasks(const _GetActiveTasks(), emit);
    return;
  }

  FutureVoid _updateSubTask(
    _UpdateSubTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _updateSubTaskUseCase(event.subTask);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (_) {
        emit(TasksManagerState.subTaskUpdated(event.subTask));
      },
    );
    await _getActiveTasks(const _GetActiveTasks(), emit);
    return;
  }

  FutureVoid _getActiveTasks(_GetActiveTasks e, Emitter<TasksManagerState> emit) async {
    emit(const TasksManagerState.loading());
    final tasksResponse = await _getTasksUseCase();

    if (tasksResponse.isLeft()) {
      final failure = tasksResponse.swap().getOrElse(() => throw Exception());
      emit(TasksManagerState.failedAction(failure.message));
    }

    final tasks = tasksResponse.getOrElse(() => []);
    final taskIds = tasks.map((item) => item.id).toList();
    final subTasksResponse = await _getSubTasksByIdsUseCase(taskIds);

    if (subTasksResponse.isLeft()) {
      final failure = subTasksResponse.swap().getOrElse(() => throw Exception());
      emit(TasksManagerState.failedAction(failure.message));
    }

    final allSubTasks = subTasksResponse.getOrElse(() => []);

    emit(TasksManagerState.loadedTasks(tasks: tasks, subTasks: allSubTasks));
    return;
  }
}
