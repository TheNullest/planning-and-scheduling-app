import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/date_range/create_batch_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/date_range/delete_batch_date_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/date_range/get_date_ranges_by_task_id_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/date_range/get_date_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/date_range/update_batch_date_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/time_range/create_batch_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/time_range/delete_batch_time_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/time_range/get_time_range_by_task_id_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/time_range/get_time_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/constraint_date_time_range/time_range/update_batch_time_ranges_use_case.dart';

part 'constraint_date_time_ranges_manager_bloc.freezed.dart';
part 'constraint_date_time_ranges_manager_event.dart';
part 'constraint_date_time_ranges_manager_state.dart';

class ConstraintDateTimeRangesManagerBloc
    extends Bloc<ConstraintDateTimeRangesManagerEvent, ConstraintDateTimeRangesManagerState> {
  ConstraintDateTimeRangesManagerBloc(
      {required CreateBatchTimeRangesUseCase createBatchTimeRangesUseCase,
      required DeleteBatchTimeRangesUseCase deleteTimeRangesUseCase,
      required GetBatchAllTimeRangesUseCase getTimeRangesUseCase,
      required GetBatchTimeRangesByTaskIdUseCase getTimeRangesByTaskIdUseCase,
      required UpdateTimeRangesUseCase updateTimeRangesUseCase,
      required CreateBatchDateRangesUseCase createBatchDateRangesUseCase,
      required DeleteBatchDateRangesUseCase deleteDateRangesUseCase,
      required GetBatchAllDateRangesUseCase getDateRangesUseCase,
      required GetBatchDateRangesByTaskIdUseCase getDateRangesByTaskIdUseCase,
      required UpdateDateRangesUseCase updateDateRangesUseCase})
      : _createBatchTimeRangesUseCase = createBatchTimeRangesUseCase,
        _deleteTimeRangesUseCase = deleteTimeRangesUseCase,
        _getTimeRangesUseCase = getTimeRangesUseCase,
        _getTimeRangesByTaskIdUseCase = getTimeRangesByTaskIdUseCase,
        _updateTimeRangesUseCase = updateTimeRangesUseCase,
        _createBatchDateRangesUseCase = createBatchDateRangesUseCase,
        _deleteDateRangesUseCase = deleteDateRangesUseCase,
        _getDateRangesUseCase = getDateRangesUseCase,
        _getDateRangesByTaskIdUseCase = getDateRangesByTaskIdUseCase,
        _updateDateRangesUseCase = updateDateRangesUseCase,
        super(const _Initial()) {
    on<ConstraintDateTimeRangesManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => emit(const ConstraintDateTimeRangesManagerState.initial()),

        // TimeRange events
        createBatchTimeRanges: (e) => _createBatchTimeRanges(e, emit),
        deleteTimeRanges: (e) => _deleteTimeRanges(e, emit),
        getTimeRanges: (e) => _getTimeRanges(e, emit),
        getTimeRangesByTaskId: (e) => _getTimeRangesByTaskId(e, emit),
        updateTimeRanges: (e) => _updateTimeRanges(e, emit),

        // DateRange events
        createBatchDateRanges: (e) => _createBatchDateRanges(e, emit),
        deleteDateRanges: (e) => _deleteDateRanges(e, emit),
        getDateRanges: (e) => _getDateRanges(e, emit),
        getDateRangesByTaskId: (e) => _getDateRangesByTaskId(e, emit),
        updateDateRanges: (e) => _updateDateRanges(e, emit),
      );
    });
  }

  // TimeRange UseCases
  final CreateBatchTimeRangesUseCase _createBatchTimeRangesUseCase;
  final DeleteBatchTimeRangesUseCase _deleteTimeRangesUseCase;
  final GetBatchAllTimeRangesUseCase _getTimeRangesUseCase;
  final GetBatchTimeRangesByTaskIdUseCase _getTimeRangesByTaskIdUseCase;
  final UpdateTimeRangesUseCase _updateTimeRangesUseCase;

  // DateRange UseCases
  final CreateBatchDateRangesUseCase _createBatchDateRangesUseCase;
  final DeleteBatchDateRangesUseCase _deleteDateRangesUseCase;
  final GetBatchAllDateRangesUseCase _getDateRangesUseCase;
  final GetBatchDateRangesByTaskIdUseCase _getDateRangesByTaskIdUseCase;
  final UpdateDateRangesUseCase _updateDateRangesUseCase;

  // --- TimeRange handlers ---
  FutureVoid _createBatchTimeRanges(
    _CreateBatchTimeRanges event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _createBatchTimeRangesUseCase(event.timeRanges);
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(const ConstraintDateTimeRangesManagerState.timeRangesBatchCreated()),
    );
    return;
  }

  FutureVoid _deleteTimeRanges(
    _DeleteBatchTimeRanges event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _deleteTimeRangesUseCase(event.ids);
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(ConstraintDateTimeRangesManagerState.timeRangesBatchDeleted(event.ids)),
    );
    return;
  }

  FutureVoid _getTimeRanges(
    _GetBatchAllTimeRanges event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _getTimeRangesUseCase();
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (timeRanges) => emit(ConstraintDateTimeRangesManagerState.timeRangesLoaded(timeRanges)),
    );
    return;
  }

  FutureVoid _getTimeRangesByTaskId(
    _GetBatchTimeRangesByTaskId event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _getTimeRangesByTaskIdUseCase(event.taskId);
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (timeRanges) => emit(ConstraintDateTimeRangesManagerState.timeRangesLoaded(timeRanges)),
    );
    return;
  }

  FutureVoid _updateTimeRanges(
    _UpdateTimeRanges event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _updateTimeRangesUseCase(event.timeRanges);
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(const ConstraintDateTimeRangesManagerState.timeRangesBatchUpdated()),
    );
    return;
  }

  // --- DateRange handlers ---
  FutureVoid _createBatchDateRanges(
    _CreateBatchDateRanges event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _createBatchDateRangesUseCase(event.dateRanges);
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(const ConstraintDateTimeRangesManagerState.dateRangesBatchCreated()),
    );
    return;
  }

  FutureVoid _deleteDateRanges(
    _DeleteBatchDateRanges event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _deleteDateRangesUseCase(event.ids);
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(ConstraintDateTimeRangesManagerState.dateRangesBatchDeleted(event.ids)),
    );
    return;
  }

  FutureVoid _getDateRanges(
    _GetBatchAllDateRanges event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _getDateRangesUseCase();
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (dateRanges) => emit(ConstraintDateTimeRangesManagerState.dateRangesLoaded(dateRanges)),
    );
    return;
  }

  FutureVoid _getDateRangesByTaskId(
    _GetBatchDateRangesByTaskId event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _getDateRangesByTaskIdUseCase(event.taskId);
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (dateRanges) => emit(ConstraintDateTimeRangesManagerState.dateRangesLoaded(dateRanges)),
    );
    return;
  }

  FutureVoid _updateDateRanges(
    _UpdateDateRanges event,
    Emitter<ConstraintDateTimeRangesManagerState> emit,
  ) async {
    emit(const ConstraintDateTimeRangesManagerState.loading());
    final result = await _updateDateRangesUseCase(event.dateRanges);
    result.fold(
      (failure) => emit(ConstraintDateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(const ConstraintDateTimeRangesManagerState.dateRangesBatchUpdated()),
    );
    return;
  }
}
