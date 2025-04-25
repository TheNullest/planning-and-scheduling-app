import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/tasks_management/domain/params/create_task_with_sub_tasks.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/schedule_definition/get_schedule_definitions_by_task_ids_and_date_range_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/shared/create_task_with_sub_tasks.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/get_tasks_by_ids_usecase.dart';
import 'package:zamaan/features/tasks_management/presentation/models/task_ui.dart';

part 'tasks_manager_event.dart';
part 'tasks_manager_state.dart';
part 'tasks_manager_bloc.freezed.dart';

class TasksManagerBloc extends Bloc<TasksManagerEvent, TasksManagerState> {
  TasksManagerBloc({
    required CreateTaskWithSubTasksUsecase createTaskWithSubtasksUseCase,
    required GetScheduleDefinitionByTaskIdsAndDateRangeUsecase
        getScheduleDefinitionByTaskIdsAndDateRangeUsecase,
    required GetTasksByIdsUsecase getTasksByIds,
  })  : _createTaskWithSubTasksUsecase = createTaskWithSubtasksUseCase,
        _getScheduleDefinitionByTaskIdsAndDateRangeUsecase =
            getScheduleDefinitionByTaskIdsAndDateRangeUsecase,
        _getTasksByIds = getTasksByIds,
        super(const _Initial()) {
    on<TasksManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        createTaskWithSubTasks: (e) async => _createTaskWithSubTasks(e, emit),
        fetchTodayTasks: (e) async => _fetchTodayTasks(e, emit),
      );
    });
  }

  final CreateTaskWithSubTasksUsecase _createTaskWithSubTasksUsecase;
  final GetScheduleDefinitionByTaskIdsAndDateRangeUsecase
      _getScheduleDefinitionByTaskIdsAndDateRangeUsecase;
  final GetTasksByIdsUsecase _getTasksByIds;

  FutureVoid _handleStarted(Emitter<TasksManagerState> emit) async {
    emit(const TasksManagerState.initial());
  }

  FutureVoid _createTaskWithSubTasks(
    _CreateTaskWithSubTasksEvent event,
    Emitter<TasksManagerState> emit,
  ) async {
    final response = await _createTaskWithSubTasksUsecase(event.taskAndSubTasks);
    response.fold(
      (failure) => emit(_CreatingFailed(failure.message)),
      (success) => emit(const _TaskAndSubTasksCreated()),
    );
  }

  // FutureVoid _fetchTodayTasks(_FetchTodayTasks e, Emitter<TasksManagerState> emit) {
  //   final response = _getScheduleDefinitionByTaskIdsAndDateRangeUsecase(
  //       DynamicWithDateRangeParams(fromDate: DateTime.now(), toDate: toDate, params: params),);
  // }
}
