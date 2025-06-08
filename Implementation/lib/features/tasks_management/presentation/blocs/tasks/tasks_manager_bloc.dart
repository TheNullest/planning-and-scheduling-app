import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/create_sub_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/delete_batch_sub_tasks_by_task_id_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/delete_sub_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/get_batch_sub_tasks_by_task_ids_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/update_sub_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/create_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/delete_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/get_batch_tasks_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/update_task_usecase.dart';

part 'tasks_manager_bloc.freezed.dart';
part 'tasks_manager_event.dart';
part 'tasks_manager_state.dart';

class TasksManagerBloc extends Bloc<TasksManagerEvent, TasksManagerState> {
  TasksManagerBloc({
    required CreateTaskUsecase createTaskUsecase,
    required CreateSubTaskUsecase createSubTaskUsecase,
    required DeleteTaskUsecase deleteTaskUsecase,
    required DeleteBatchSubTasksByTaskIdUsecase deleteBatchSubTasksByTaskIdUsecase,
    required DeleteSubTaskUsecase deleteSubTaskUsecase,
    required UpdateTaskUsecase updateTaskUsecase,
    required UpdateSubTaskUsecase updateSubTaskUsecase,
    required GetBatchTasksUsecase getBatchTasksUsecase,
    required GetBatchSubTasksByTaskIdsUsecase getBatchSubTasksUsecase,
  })  : _createTaskUsecase = createTaskUsecase,
        _createSubTaskUsecase = createSubTaskUsecase,
        _deleteTaskUsecase = deleteTaskUsecase,
        _deleteSubTaskUsecase = deleteSubTaskUsecase,
        _deleteBatchSubTasksByTaskIdUsecase = deleteBatchSubTasksByTaskIdUsecase,
        _updateTaskUsecase = updateTaskUsecase,
        _updateSubTaskUsecase = updateSubTaskUsecase,
        _getBatchTasksUsecase = getBatchTasksUsecase,
        _getBatchSubTasksByIdsUsecase = getBatchSubTasksUsecase,
        super(const _Initial()) {
    on<TasksManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        createTask: (e) async => _createTask(e, emit),
        createSubTask: (e) async => _createSubTask(e, emit),
        deleteTask: (e) async => _deleteTask(e, emit),
        deleteSubTask: (e) async => _deleteSubTask(e, emit),
        deleteBatchSubTasksByTaskId: (e) async => _deleteBatchSubTasks(e, emit),
        updateTask: (e) async => _updateTask(e, emit),
        fetchActiveTasks: (e) async => _fetchActiveTasks(e, emit),
        updateSubTask: (e) async => _updateSubTask(e, emit),
      );
    });
  }

  final CreateTaskUsecase _createTaskUsecase;
  final CreateSubTaskUsecase _createSubTaskUsecase;
  final DeleteTaskUsecase _deleteTaskUsecase;
  final DeleteBatchSubTasksByTaskIdUsecase _deleteBatchSubTasksByTaskIdUsecase;
  final DeleteSubTaskUsecase _deleteSubTaskUsecase;
  final UpdateTaskUsecase _updateTaskUsecase;
  final UpdateSubTaskUsecase _updateSubTaskUsecase;
  final GetBatchTasksUsecase _getBatchTasksUsecase;
  final GetBatchSubTasksByTaskIdsUsecase _getBatchSubTasksByIdsUsecase;

  FutureVoid _handleStarted(Emitter<TasksManagerState> emit) async {
    emit(const TasksManagerState.loading());
    emit(const TasksManagerState.initial());
    await _fetchActiveTasks(const _FetchActiveTasks(), emit);
  }

  FutureVoid _createTask(
    _CreateTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final tasksResponse = await _createTaskUsecase(event.newTask);

    if (tasksResponse.isLeft()) {
      final failure = tasksResponse.swap().getOrElse(() => throw Exception());
      emit(TasksManagerState.failedAction(failure.message));
      return;
    }

    final taskId = tasksResponse.getOrElse(() => '');
    emit(_TaskCreated(taskId));

    await _fetchActiveTasks(const _FetchActiveTasks(), emit);
  }

  FutureVoid _createSubTask(
    _CreateSubTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    final response = await _createSubTaskUsecase(event.newSubTask);
    emit(const TasksManagerState.loading());
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (subTaskId) {
        emit(_SubTaskCreated(subTaskId));
      },
    );
    await _fetchActiveTasks(const _FetchActiveTasks(), emit);
  }

  FutureVoid _deleteTask(
    _DeleteTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _deleteTaskUsecase(event.taskId);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (taskId) {
        emit(const _SuccessfulAction(''));
      },
    );

    await _deleteBatchSubTasks(
      _DeleteBatchSubTasksByTaskId(taskId: event.taskId),
      emit,
    );
  }

  FutureVoid _deleteSubTask(
    _DeleteSubTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _deleteSubTaskUsecase(event.subTaskId);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (taskId) {
        emit(_SubTaskDeleted(event.subTaskId));
      },
    );
    await _fetchActiveTasks(const _FetchActiveTasks(), emit);
  }

  FutureVoid _deleteBatchSubTasks(
    _DeleteBatchSubTasksByTaskId event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _deleteBatchSubTasksByTaskIdUsecase(event.taskId);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (taskId) {
        emit(const _SuccessfulAction(''));
      },
    );
    await _fetchActiveTasks(const _FetchActiveTasks(), emit);
  }

  FutureVoid _updateTask(
    _UpdateTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _updateTaskUsecase(event.task);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (_) {
        emit(const TasksManagerState.taskUpdated());
      },
    );
    await _fetchActiveTasks(const _FetchActiveTasks(), emit);
  }

  FutureVoid _updateSubTask(
    _UpdateSubTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _updateSubTaskUsecase(event.subTask);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (_) {
        emit(TasksManagerState.subTaskUpdated(event.subTask.id));
      },
    );
    await _fetchActiveTasks(const _FetchActiveTasks(), emit);
  }

  FutureVoid _fetchActiveTasks(_FetchActiveTasks e, Emitter<TasksManagerState> emit) async {
    emit(const TasksManagerState.loading());
    final tasksResponse = await _getBatchTasksUsecase();

    if (tasksResponse.isLeft()) {
      final failure = tasksResponse.swap().getOrElse(() => throw Exception());
      emit(TasksManagerState.failedAction(failure.message));
    }

    final tasks = tasksResponse.getOrElse(() => []);
    final taskIds = tasks.map((item) => item.id).toList();
    final subTasksResponse = await _getBatchSubTasksByIdsUsecase(taskIds);

    if (subTasksResponse.isLeft()) {
      final failure = subTasksResponse.swap().getOrElse(() => throw Exception());
      emit(TasksManagerState.failedAction(failure.message));
    }

    final allSubTasks = subTasksResponse.getOrElse(() => []);

    emit(TasksManagerState.fetchedTasks(tasks: tasks, subTasks: allSubTasks));
  }
}
