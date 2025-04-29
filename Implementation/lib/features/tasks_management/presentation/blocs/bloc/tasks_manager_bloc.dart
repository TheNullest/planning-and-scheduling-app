import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/features/tasks_management/domain/params/create_task_with_sub_tasks.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_instance/get_batch_scheduled_instances_by_day.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/shared/create_task.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_instance_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/task_ui.dart';

part 'tasks_manager_event.dart';
part 'tasks_manager_state.dart';
part 'tasks_manager_bloc.freezed.dart';

class TasksManagerBloc extends Bloc<TasksManagerEvent, TasksManagerState> {
  TasksManagerBloc({
    required CreateTaskWithSubTasksUsecase createTaskWithSubtasksUseCase,
    required GetBatchScheduledInstancesByDay getTodayScheduledInstancesUsecase,
  })  : _createTaskWithSubTasksUsecase = createTaskWithSubtasksUseCase,
        _getTodayScheduledInstancesUsecase = getTodayScheduledInstancesUsecase,
        super(const _Initial()) {
    on<TasksManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        createTaskWithSubTasks: (e) async => _createTaskWithSubTasks(e, emit),
        fetchScheduledInstancesByDay: (e) async => _fetchCurrentDayScheduledInstances(e, emit),
      );
    });
  }

  final CreateTaskWithSubTasksUsecase _createTaskWithSubTasksUsecase;

  final GetBatchScheduledInstancesByDay _getTodayScheduledInstancesUsecase;

  FutureVoid _handleStarted(Emitter<TasksManagerState> emit) async {
    emit(const TasksManagerState.initial());
  }

  FutureVoid _createTaskWithSubTasks(
    _CreateTaskWithSubTasksEvent event,
    Emitter<TasksManagerState> emit,
  ) async {
    final response = await _createTaskWithSubTasksUsecase(event.taskAndSubTasks);
    response.fold(
      (failure) => emit(_FailedAction(failure.message)),
      (success) => emit(const _TaskAndSubTasksCreated()),
    );
  }

  FutureVoid _fetchCurrentDayScheduledInstances(_FetchScheduledInstancesByDay e, Emitter<TasksManagerState> emit) async{
    emit(const TasksManagerState.loading());
    final response = await _getTodayScheduledInstancesUsecase(e.date);
    response.fold(
      (failure) => emit(_FetchScheduledInstancesFailed(failure.message)),
      (scheduledInstances) {
        emit(TasksManagerState.scheduledInstancesFetched(scheduledInstances));
      },
    );
  }
}
