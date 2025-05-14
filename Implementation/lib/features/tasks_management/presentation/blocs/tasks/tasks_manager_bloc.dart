import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/create_sub_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/delete_batch_sub_tasks_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/get_batch_by_ids_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/create_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/delete_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/get_batch_tasks_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/update_task_usecase.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/sub_task_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/task/task_vm.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

part 'tasks_manager_bloc.freezed.dart';
part 'tasks_manager_event.dart';
part 'tasks_manager_state.dart';

class TasksManagerBloc extends Bloc<TasksManagerEvent, TasksManagerState> {
  TasksManagerBloc({
    required ViewModelMapper<TaskVM, TaskEntity> taskVMMapper,
    required ViewModelMapper<SubTaskVM, SubTaskEntity> subTaskVMMapper,
    required CreateTaskUsecase createTaskUsecase,
    required CreateSubTaskUsecase createSubTaskUsecase,
    required DeleteTaskUsecase deleteTaskUsecase,
    required DeleteBatchSubTasksUsecase deleteBatchSubTasksUsecase,
    required UpdateTaskUsecase updateTaskUsecase,
    required GetBatchTasksUsecase getBatchTasksUsecase,
    required GetBatchSubTasksByIdsUsecase getBatchSubTasksUsecase,
  })  : _taskVMMapper = taskVMMapper,
        _subTaskVMMapper = subTaskVMMapper,
        _createTaskUsecase = createTaskUsecase,
        _createSubTaskUsecase = createSubTaskUsecase,
        _deleteTaskUsecase = deleteTaskUsecase,
        _deleteBatchSubTasksUsecase = deleteBatchSubTasksUsecase,
        _updateTaskUsecase = updateTaskUsecase,
        _getBatchTasksUsecase = getBatchTasksUsecase,
        _getBatchSubTasksByIdsUsecase = getBatchSubTasksUsecase,
        super(const _Initial()) {
    on<TasksManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        createTask: (e) async => _createTask(e, emit),
        createSubTask: (e) async => _createSubTask(e, emit),
        deleteTask: (e) async => _deleteTask(e, emit),
        deleteBatchSubTasks: (e) async => _deleteBatchSubTasks(e, emit),
        updateTask: (e) async => _updateTask(e, emit),
        fetchActiveTasks: (e) async => _fetchActiveTasks(e, emit),
      );
    });
  }

  final ViewModelMapper<TaskVM, TaskEntity> _taskVMMapper;
  final ViewModelMapper<SubTaskVM, SubTaskEntity> _subTaskVMMapper;

  final CreateTaskUsecase _createTaskUsecase;
  final CreateSubTaskUsecase _createSubTaskUsecase;
  final DeleteTaskUsecase _deleteTaskUsecase;
  final DeleteBatchSubTasksUsecase _deleteBatchSubTasksUsecase;
  final UpdateTaskUsecase _updateTaskUsecase;
  final GetBatchTasksUsecase _getBatchTasksUsecase;
  final GetBatchSubTasksByIdsUsecase _getBatchSubTasksByIdsUsecase;

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
    final response = await _createTaskUsecase(_taskVMMapper.toEntity(event.newTask));
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (taskId) {
        emit(_TaskCreated(taskId));
      },
    );
    await _fetchActiveTasks(const _FetchActiveTasks(), emit);
  }

  FutureVoid _deleteTask(
    _DeleteTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _deleteTaskUsecase(event.task.id!);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (taskId) {
        emit(const _SuccessfulAction(''));
      },
    );

    await _deleteBatchSubTasks(
      _DeleteBatchSubTasks(subTaskIds: event.task.subTasks.map((item) => item.id!).toList()),
      emit,
    );
  }

  FutureVoid _deleteBatchSubTasks(
    _DeleteBatchSubTasks event,
    Emitter<TasksManagerState> emit,
  ) async {
    emit(const TasksManagerState.loading());
    final response = await _deleteBatchSubTasksUsecase(event.subTaskIds);
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
    final response = await _updateTaskUsecase(_taskVMMapper.toEntity(event.task));
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (_) {
        emit(const _SuccessfulAction(''));
      },
    );
    await _fetchActiveTasks(const _FetchActiveTasks(), emit);
  }

  FutureVoid _createSubTask(
    _CreateSubTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    final response = await _createSubTaskUsecase(_subTaskVMMapper.toEntity(event.newSubTask));
    emit(const TasksManagerState.loading());
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (subTaskId) {
        emit(_SubTaskCreated(subTaskId));
      },
    );
  }

  FutureVoid _fetchActiveTasks(_FetchActiveTasks e, Emitter<TasksManagerState> emit) async {
    emit(const TasksManagerState.loading());
    final tasksResponse = await _getBatchTasksUsecase();

    if (tasksResponse.isLeft()) {
      final failure = tasksResponse.swap().getOrElse(() => throw Exception());
      emit(TasksManagerState.failedAction(failure.message));
      return;
    }

    final tasks = tasksResponse.getOrElse(() => []);
    final subTaskIds = tasks.map((item) => item.subTaskIds).expand((ids) => ids).toList();
    final subTasksResponse = await _getBatchSubTasksByIdsUsecase(subTaskIds);

    if (subTasksResponse.isLeft()) {
      final failure = subTasksResponse.swap().getOrElse(() => throw Exception());
      emit(TasksManagerState.failedAction(failure.message));
      return;
    }

    final allSubTasks = subTasksResponse.getOrElse(() => []);

    final taskVMs = tasks.map((task) {
      final taskSubTasks = allSubTasks.where((subTask) => subTask.taskId == task.id).toList();
      return _taskVMMapper.toVM(task, relations: {'subTasks': taskSubTasks});
    }).toList();

    emit(TasksManagerState.fetchedTasks(taskVMs));
  }
}
