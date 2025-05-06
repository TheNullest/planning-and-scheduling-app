import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/create_sub_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/get_batch_by_ids_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/create_task_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/get_batch_tasks_usecase.dart';
import 'package:zamaan/features/tasks_management/presentation/models/sub_task_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/models/task/task_vm.dart';
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
    required GetBatchTasksUsecase getBatchTasksUsecase,
    required GetBatchSubTasksByIdsUsecase getBatchSubTasksUsecase,
  })  : _taskVMMapper = taskVMMapper,
        _subTaskVMMapper = subTaskVMMapper,
        _createTaskUsecase = createTaskUsecase,
        _createSubTaskUsecase = createSubTaskUsecase,
        _getBatchTasksUsecase = getBatchTasksUsecase,
        _getBatchSubTasksByIdsUsecase = getBatchSubTasksUsecase,
        super(const _Initial()) {
    on<TasksManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        createTask: (e) async => _createTask(e, emit),
        createSubTask: (e) async => _createSubTask(e, emit),
        fetchAllTasks: (e) async => _fetchAllTasks(e, emit),
      );
    });
  }

  final ViewModelMapper<TaskVM, TaskEntity> _taskVMMapper;
  final ViewModelMapper<SubTaskVM, SubTaskEntity> _subTaskVMMapper;

  final CreateTaskUsecase _createTaskUsecase;
  final CreateSubTaskUsecase _createSubTaskUsecase;
  final GetBatchTasksUsecase _getBatchTasksUsecase;
  final GetBatchSubTasksByIdsUsecase _getBatchSubTasksByIdsUsecase;

  FutureVoid _handleStarted(Emitter<TasksManagerState> emit) async {
    emit(const TasksManagerState.loading());
    emit(const TasksManagerState.initial());
  }

  FutureVoid _createTask(
    _CreateTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    final response = await _createTaskUsecase(_taskVMMapper.toEntity(event.newTask));
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (success) {
        emit(const TasksManagerState.loading());
        emit(const _TaskCreated());
      },
    );
  }

  FutureVoid _createSubTask(
    _CreateSubTask event,
    Emitter<TasksManagerState> emit,
  ) async {
    final response = await _createSubTaskUsecase(_subTaskVMMapper.toEntity(event.newSubTask));
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (success) {
        emit(const TasksManagerState.loading());

        emit(const _SubTaskCreated());
      },
    );
  }

  FutureVoid _fetchAllTasks(_FetchAllTasks e, Emitter<TasksManagerState> emit) async {
    final tasksResponse = await _getBatchTasksUsecase();
    tasksResponse.fold(
      (failure) => emit(TasksManagerState.failedAction(failure.message)),
      (tasks) async {
        emit(const TasksManagerState.loading());

        final subTasksResponse =
            await _getBatchSubTasksByIdsUsecase(tasks.expand((task) => task.subTaskIds).toList());

        subTasksResponse.fold(
          (failure) => emit(TasksManagerState.failedAction(failure.message)),
          (allSubTasks) {
            final taskVMs = tasks.map((task) {
              final taskSubTasks =
                  allSubTasks.where((subTask) => subTask.taskId == task.id).toList();

              return _taskVMMapper.toVM(task, relations: {'subTasks': taskSubTasks});
            }).toList();

            emit(TasksManagerState.fetchedTasks(taskVMs));
          },
        );
      },
    );
  }
}
