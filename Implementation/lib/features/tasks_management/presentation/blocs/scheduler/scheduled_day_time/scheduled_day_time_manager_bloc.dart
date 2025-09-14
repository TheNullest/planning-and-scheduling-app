import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/scheduled_day_time/create_batch_scheduledDayTime_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/scheduled_day_time/delete_batch_scheduledDayTime_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/scheduled_day_time/get_scheduledDayTime_by_task_id_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/scheduled_day_time/get_scheduledDayTime_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/scheduled_day_time/update_batch_scheduledDayTime_use_case.dart';

part 'scheduled_day_time_manager_bloc.freezed.dart';
part 'scheduled_day_time_manager_event.dart';
part 'scheduled_day_time_manager_state.dart';

class ScheduledDayTimesManagerBloc
    extends Bloc<ScheduledDayTimesManagerEvent, ScheduledDayTimesManagerState> {
  ScheduledDayTimesManagerBloc({
    required CreateBatchScheduledDayTimesUseCase createBatch,
    required DeleteBatchScheduledDayTimesUseCase delete,
    required GetScheduledDayTimesUseCase get,
    required GetScheduledDayTimesByTaskIdUseCase getByTaskId,
    required UpdateScheduledDayTimesUseCase update,
  })  : _createBatchScheduledDayTimesUseCase = createBatch,
        _deleteScheduledDayTimesUseCase = delete,
        _getScheduledDayTimesUseCase = get,
        _getScheduledDayTimesByTaskIdUseCase = getByTaskId,
        _updateScheduledDayTimesUseCase = update,
        super(const ScheduledDayTimesManagerState.initial()) {
    on<_GetScheduledDayTimes>(_onGetAll);
    on<_GetBatchScheduledDayTimesByTaskId>(_onGetByTaskId);
    on<_CreateBatchScheduledDayTimes>(_onCreateBatch);
    on<_UpdateScheduledDayTimes>(_onUpdate);
    on<_DeleteBatchScheduledDayTimes>(_onDeleteBatch);
  }

  final CreateBatchScheduledDayTimesUseCase _createBatchScheduledDayTimesUseCase;
  final DeleteBatchScheduledDayTimesUseCase _deleteScheduledDayTimesUseCase;
  final GetScheduledDayTimesUseCase _getScheduledDayTimesUseCase;
  final GetScheduledDayTimesByTaskIdUseCase _getScheduledDayTimesByTaskIdUseCase;
  final UpdateScheduledDayTimesUseCase _updateScheduledDayTimesUseCase;

  Future<void> _onGetAll(
    _GetScheduledDayTimes event,
    Emitter<ScheduledDayTimesManagerState> emit,
  ) async {
    emit(const ScheduledDayTimesManagerState.loading());
    final result = await _getScheduledDayTimesUseCase();
    result.fold(
      (failure) => emit(
        ScheduledDayTimesManagerState.failure(error: failure.message),
      ),
      (days) => emit(
        ScheduledDayTimesManagerState.loadedBatch(
          scheduledDayTimes: days,
        ),
      ),
    );
  }

  Future<void> _onGetByTaskId(
    _GetBatchScheduledDayTimesByTaskId event,
    Emitter<ScheduledDayTimesManagerState> emit,
  ) async {
    emit(const ScheduledDayTimesManagerState.loading());
    final result = await _getScheduledDayTimesByTaskIdUseCase(event.taskId);
    result.fold(
      (failure) => emit(
        ScheduledDayTimesManagerState.failure(error: failure.message),
      ),
      (days) => emit(
        ScheduledDayTimesManagerState.loadedByTaskId(
          scheduledDayTimes: days,
        ),
      ),
    );
  }

  Future<void> _onCreateBatch(
    _CreateBatchScheduledDayTimes event,
    Emitter<ScheduledDayTimesManagerState> emit,
  ) async {
    emit(const ScheduledDayTimesManagerState.loading());
    final result = await _createBatchScheduledDayTimesUseCase(event.days);
    result.fold(
      (failure) => emit(
        ScheduledDayTimesManagerState.failure(error: failure.message),
      ),
      (_) => emit(
        ScheduledDayTimesManagerState.created(event.days),
      ),
    );
  }

// TODO[FIXME]: Improve combination of update and delete in one transaction
  Future<void> _onUpdate(
    _UpdateScheduledDayTimes event,
    Emitter<ScheduledDayTimesManagerState> emit,
  ) async {
    emit(const ScheduledDayTimesManagerState.loading());
    await _onDeleteBatch(_DeleteBatchScheduledDayTimes(event.deleteDayTimes), emit);

    final result = await _updateScheduledDayTimesUseCase(event.days);

    result.fold(
      (failure) => emit(
        ScheduledDayTimesManagerState.failure(error: failure.message),
      ),
      (updatedDays) => emit(
        ScheduledDayTimesManagerState.updated(event.days),
      ),
    );

    await _onGetByTaskId(_GetBatchScheduledDayTimesByTaskId(taskId: event.days.first.taskId), emit);
  }

  Future<void> _onDeleteBatch(
      _DeleteBatchScheduledDayTimes event, Emitter<ScheduledDayTimesManagerState> emit) async {
    emit(const ScheduledDayTimesManagerState.loading());
    final deleteResult = await _deleteScheduledDayTimesUseCase(event.ids);
    deleteResult.fold(
      (failure) => emit(
        ScheduledDayTimesManagerState.failure(error: failure.message),
      ),
      (ids) => emit(
        ScheduledDayTimesManagerState.deleted(event.ids),
      ),
    );
  }
}
