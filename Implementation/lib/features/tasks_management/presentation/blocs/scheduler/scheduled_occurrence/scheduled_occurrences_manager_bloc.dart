import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_occurrence/create_batch_scheduled_occurrences_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_occurrence/delete_batch_scheduled_occurrences_by_scheduler_ids_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_occurrence/delete_batch_scheduled_occurrences_by_task_id_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_occurrence/delete_batch_scheduled_occurrences_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_occurrence/get_scheduled_occurrences_by_date_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_occurrence/get_scheduled_occurrences_by_scheduler_ids_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_occurrence/get_scheduled_occurrences_by_task_id_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_occurrence/get_upcoming_scheduled_occurrences_by_task_Id_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_occurrence/update_batch_scheduled_occurrences_use_case.dart';
part 'scheduled_occurrences_manager_bloc.freezed.dart';
part 'scheduled_occurrences_manager_event.dart';
part 'scheduled_occurrences_manager_state.dart';

class ScheduledOccurrencesManagerBloc
    extends Bloc<ScheduledOccurrencesManagerEvent, ScheduledOccurrencesManagerState> {
  ScheduledOccurrencesManagerBloc({
    required this.getByTaskId,
    required this.getByDate,
    required this.getBySchedulerIds,
    required this.getUpcomingByTaskId,
    required this.createBatch,
    required this.updateBatch,
    required this.deleteBatch,
    required this.deleteBatchBySchedulerIds,
    required this.deleteBatchByTaskId,
  }) : super(const ScheduledOccurrencesManagerState.initial()) {
    on<ScheduledOccurrencesManagerEvent>((event, emit) async {
      await event.map(
        started: (_) => _onStarted(emit),
        getByTaskId: (e) => _onGetByTaskId(e, emit),
        getByDate: (e) => _onGetByDate(e, emit),
        getBySchedulerIds: (e) => _onGetBySchedulerIds(e, emit),
        getUpcomingByTaskId: (e) => _onGetUpcomingByTaskId(e, emit),
        createBatch: (e) => _onCreateBatch(e, emit),
        updateBatch: (e) => _onUpdateBatch(e, emit),
        deleteBatch: (e) => _onDeleteBatch(e, emit),
        deleteBySchedulerIds: (e) => _onDeleteBySchedulerIds(e, emit),
        deleteByTaskId: (e) => _onDeleteByTaskId(e, emit),
      );
    });
  }

  final GetScheduledOccurrencesByTaskIdUseCase getByTaskId;
  final GetScheduledOccurrencesByDateUseCase getByDate;
  final GetScheduledOccurrencesBySchedulerIdsUseCase getBySchedulerIds;
  final GetUpcomingScheduledOccurrencesByTaskIdUseCase getUpcomingByTaskId;
  final CreateBatchScheduledOccurrencesUseCase createBatch;
  final UpdateBatchScheduledOccurrencesUseCase updateBatch;
  final DeleteBatchScheduledOccurrencesUseCase deleteBatch;
  final DeleteBatchScheduledOccurrencesBySchedulerIdsUseCase deleteBatchBySchedulerIds;
  final DeleteBatchScheduledOccurrencesByTaskIdUseCase deleteBatchByTaskId;

  Future<void> _onStarted(Emitter<ScheduledOccurrencesManagerState> emit) async {
    // Initialization logic if needed
  }

  Future<void> _onGetByTaskId(
    _GetByTaskId event,
    Emitter<ScheduledOccurrencesManagerState> emit,
  ) async {
    emit(const ScheduledOccurrencesManagerState.loading());

    final result = await getByTaskId.call(event.taskId);
    result.fold(
      (failure) => emit(ScheduledOccurrencesManagerState.loadByTaskIdFailure(
        error: failure.message,
      )),
      (occurrences) => emit(ScheduledOccurrencesManagerState.loadByTaskIdSuccess(
        occurrences: occurrences,
      )),
    );
  }

  Future<void> _onGetByDate(
    _GetByDate event,
    Emitter<ScheduledOccurrencesManagerState> emit,
  ) async {
    emit(const ScheduledOccurrencesManagerState.loading());

    final result = await getByDate.call(event.date);
    result.fold(
      (failure) => emit(ScheduledOccurrencesManagerState.loadByDateFailure(
        error: failure.message,
      )),
      (occurrences) => emit(ScheduledOccurrencesManagerState.loadByDateSuccess(
        occurrences: occurrences,
      )),
    );
  }

  Future<void> _onGetBySchedulerIds(
    _GetBySchedulerIds event,
    Emitter<ScheduledOccurrencesManagerState> emit,
  ) async {
    emit(const ScheduledOccurrencesManagerState.loading());

    final result = await getBySchedulerIds.call(event.schedulerIds);
    result.fold(
      (failure) => emit(ScheduledOccurrencesManagerState.loadBySchedulerIdsFailure(
        error: failure.message,
      )),
      (occurrences) => emit(ScheduledOccurrencesManagerState.loadBySchedulerIdsSuccess(
        occurrences: occurrences,
      )),
    );
  }

  Future<void> _onGetUpcomingByTaskId(
    _GetUpcomingByTaskId event,
    Emitter<ScheduledOccurrencesManagerState> emit,
  ) async {
    emit(const ScheduledOccurrencesManagerState.loading());

    final result = await getUpcomingByTaskId.call(event.taskId);
    result.fold(
      (failure) => emit(ScheduledOccurrencesManagerState.loadUpcomingByTaskIdFailure(
        error: failure.message,
      )),
      (occurrences) => emit(ScheduledOccurrencesManagerState.loadUpcomingByTaskIdSuccess(
        occurrences: occurrences,
      )),
    );
  }

  Future<void> _onCreateBatch(
    _CreateBatch event,
    Emitter<ScheduledOccurrencesManagerState> emit,
  ) async {
    emit(const ScheduledOccurrencesManagerState.inProgress());

    final result = await createBatch.call(event.occurrences);
    result.fold(
      (failure) => emit(ScheduledOccurrencesManagerState.createBatchFailure(
        error: failure.message,
      )),
      (_) => emit(const ScheduledOccurrencesManagerState.createBatchSuccess(
        message: 'Batch created successfully',
      )),
    );
  }

  Future<void> _onUpdateBatch(
    _UpdateBatch event,
    Emitter<ScheduledOccurrencesManagerState> emit,
  ) async {
    emit(const ScheduledOccurrencesManagerState.inProgress());

    final result = await updateBatch.call(event.occurrences);
    result.fold(
      (failure) => emit(ScheduledOccurrencesManagerState.updateBatchFailure(
        error: failure.message,
      )),
      (_) => emit(const ScheduledOccurrencesManagerState.updateBatchSuccess(
        message: 'Batch updated successfully',
      )),
    );
  }

  Future<void> _onDeleteBatch(
    _DeleteBatch event,
    Emitter<ScheduledOccurrencesManagerState> emit,
  ) async {
    emit(const ScheduledOccurrencesManagerState.inProgress());

    final result = await deleteBatch.call(event.occurrenceIds);
    result.fold(
      (failure) => emit(ScheduledOccurrencesManagerState.deleteBatchFailure(
        error: failure.message,
      )),
      (_) => emit(ScheduledOccurrencesManagerState.deleteBatchSuccess(
        ids: event.occurrenceIds,
      )),
    );
  }

  Future<void> _onDeleteBySchedulerIds(
    _DeleteBySchedulerIds event,
    Emitter<ScheduledOccurrencesManagerState> emit,
  ) async {
    emit(const ScheduledOccurrencesManagerState.inProgress());

    final result = await deleteBatchBySchedulerIds.call(event.schedulerIds);
    result.fold(
      (failure) => emit(ScheduledOccurrencesManagerState.deleteBySchedulerIdsFailure(
        error: failure.message,
      )),
      (_) => emit(const ScheduledOccurrencesManagerState.deleteBySchedulerIdsSuccess(
        message: 'Occurrences deleted by scheduler IDs',
      )),
    );
  }

  Future<void> _onDeleteByTaskId(
    _DeleteByTaskId event,
    Emitter<ScheduledOccurrencesManagerState> emit,
  ) async {
    emit(const ScheduledOccurrencesManagerState.inProgress());

    final result = await deleteBatchByTaskId.call(event.taskId);
    result.fold(
      (failure) => emit(ScheduledOccurrencesManagerState.deleteByTaskIdFailure(
        error: failure.message,
      )),
      (_) => emit(const ScheduledOccurrencesManagerState.deleteByTaskIdSuccess(
        message: 'Occurrences deleted by task ID',
      )),
    );
  }
}
