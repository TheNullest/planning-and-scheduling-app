import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/date_range/create_batch_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/date_range/delete_batch_date_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/date_range/fetch_all_date_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/date_range/fetch_batch_date_ranges_by_ids_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/date_range/update_batch_date_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/time_range/create_batch_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/time_range/delete_batch_time_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/time_range/fetch_all_time_ranges_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/time_range/fetch_batch_time_range_by_ids_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/date_time_range/time_range/update_batch_time_ranges_use_case.dart';

part 'date_time_ranges_manager_event.dart';
part 'date_time_ranges_manager_state.dart';
part 'date_time_ranges_manager_bloc.freezed.dart';

class DateTimeRangesManagerBloc extends Bloc<DateTimeRangesManagerEvent, DateTimeRangesManagerState> {
  DateTimeRangesManagerBloc(
      {required CreateBatchTimeRangesUseCase createBatchTimeRangesUseCase,
      required DeleteBatchTimeRangesUseCase deleteBatchTimeRangesUseCase,
      required FetchBatchAllTimeRangesUseCase fetchBatchAllTimeRangesUseCase,
      required FetchBatchTimeRangesByIdsUseCase fetchBatchTimeRangesByIdsUseCase,
      required UpdateBatchTimeRangesUseCase updateBatchTimeRangesUseCase,
      required CreateBatchDateRangesUseCase createBatchDateRangesUseCase,
      required DeleteBatchDateRangesUseCase deleteBatchDateRangesUseCase,
      required FetchBatchAllDateRangesUseCase fetchBatchAllDateRangesUseCase,
      required FetchBatchDateRangesByIdsUseCase fetchBatchDateRangesByIdsUseCase,
      required UpdateBatchDateRangesUseCase updateBatchDateRangesUseCase})
      : _createBatchTimeRangesUseCase = createBatchTimeRangesUseCase,
        _deleteBatchTimeRangesUseCase = deleteBatchTimeRangesUseCase,
        _fetchBatchAllTimeRangesUseCase = fetchBatchAllTimeRangesUseCase,
        _fetchBatchTimeRangesByIdsUseCase = fetchBatchTimeRangesByIdsUseCase,
        _updateBatchTimeRangesUseCase = updateBatchTimeRangesUseCase,
        _createBatchDateRangesUseCase = createBatchDateRangesUseCase,
        _deleteBatchDateRangesUseCase = deleteBatchDateRangesUseCase,
        _fetchBatchAllDateRangesUseCase = fetchBatchAllDateRangesUseCase,
        _fetchBatchDateRangesByIdsUseCase = fetchBatchDateRangesByIdsUseCase,
        _updateBatchDateRangesUseCase = updateBatchDateRangesUseCase,
        super(const _Initial()) {
    on<DateTimeRangesManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => emit(const DateTimeRangesManagerState.initial()),

        // TimeRange events
        createBatchTimeRanges: (e) => _createBatchTimeRanges(e, emit),
        deleteBatchTimeRanges: (e) => _deleteBatchTimeRanges(e, emit),
        fetchBatchAllTimeRanges: (e) => _fetchBatchAllTimeRanges(e, emit),
        fetchBatchTimeRangesByIds: (e) => _fetchBatchTimeRangesByIds(e, emit),
        updateBatchTimeRanges: (e) => _updateBatchTimeRanges(e, emit),

        // DateRange events
        createBatchDateRanges: (e) => _createBatchDateRanges(e, emit),
        deleteBatchDateRanges: (e) => _deleteBatchDateRanges(e, emit),
        fetchBatchAllDateRanges: (e) => _fetchBatchAllDateRanges(e, emit),
        fetchBatchDateRangesByIds: (e) => _fetchBatchDateRangesByIds(e, emit),
        updateBatchDateRanges: (e) => _updateBatchDateRanges(e, emit),
      );
    });
  }

  // TimeRange UseCases
  final CreateBatchTimeRangesUseCase _createBatchTimeRangesUseCase;
  final DeleteBatchTimeRangesUseCase _deleteBatchTimeRangesUseCase;
  final FetchBatchAllTimeRangesUseCase _fetchBatchAllTimeRangesUseCase;
  final FetchBatchTimeRangesByIdsUseCase _fetchBatchTimeRangesByIdsUseCase;
  final UpdateBatchTimeRangesUseCase _updateBatchTimeRangesUseCase;

  // DateRange UseCases
  final CreateBatchDateRangesUseCase _createBatchDateRangesUseCase;
  final DeleteBatchDateRangesUseCase _deleteBatchDateRangesUseCase;
  final FetchBatchAllDateRangesUseCase _fetchBatchAllDateRangesUseCase;
  final FetchBatchDateRangesByIdsUseCase _fetchBatchDateRangesByIdsUseCase;
  final UpdateBatchDateRangesUseCase _updateBatchDateRangesUseCase;

  // --- TimeRange handlers ---
  FutureVoid _createBatchTimeRanges(
    _CreateBatchTimeRanges event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _createBatchTimeRangesUseCase(event.timeRanges);
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(const DateTimeRangesManagerState.timeRangesBatchCreated()),
    );
  }

  FutureVoid _deleteBatchTimeRanges(
    _DeleteBatchTimeRanges event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _deleteBatchTimeRangesUseCase(event.ids);
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(DateTimeRangesManagerState.timeRangesBatchDeleted(event.ids)),
    );
  }

  FutureVoid _fetchBatchAllTimeRanges(
    _FetchBatchAllTimeRanges event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _fetchBatchAllTimeRangesUseCase();
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (timeRanges) => emit(DateTimeRangesManagerState.timeRangesLoaded(timeRanges)),
    );
  }

  FutureVoid _fetchBatchTimeRangesByIds(
    _FetchBatchTimeRangesByIds event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _fetchBatchTimeRangesByIdsUseCase(event.ids);
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (timeRanges) => emit(DateTimeRangesManagerState.timeRangesLoaded(timeRanges)),
    );
  }

  FutureVoid _updateBatchTimeRanges(
    _UpdateBatchTimeRanges event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _updateBatchTimeRangesUseCase(event.timeRanges);
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(const DateTimeRangesManagerState.timeRangesBatchUpdated()),
    );
  }

  // --- DateRange handlers ---
  FutureVoid _createBatchDateRanges(
    _CreateBatchDateRanges event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _createBatchDateRangesUseCase(event.dateRanges);
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(const DateTimeRangesManagerState.dateRangesBatchCreated()),
    );
  }

  FutureVoid _deleteBatchDateRanges(
    _DeleteBatchDateRanges event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _deleteBatchDateRangesUseCase(event.ids);
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(DateTimeRangesManagerState.dateRangesBatchDeleted(event.ids)),
    );
  }

  FutureVoid _fetchBatchAllDateRanges(
    _FetchBatchAllDateRanges event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _fetchBatchAllDateRangesUseCase();
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (dateRanges) => emit(DateTimeRangesManagerState.dateRangesLoaded(dateRanges)),
    );
  }

  FutureVoid _fetchBatchDateRangesByIds(
    _FetchBatchDateRangesByIds event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _fetchBatchDateRangesByIdsUseCase(event.ids);
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (dateRanges) => emit(DateTimeRangesManagerState.dateRangesLoaded(dateRanges)),
    );
  }

  FutureVoid _updateBatchDateRanges(
    _UpdateBatchDateRanges event,
    Emitter<DateTimeRangesManagerState> emit,
  ) async {
    emit(const DateTimeRangesManagerState.loading());
    final result = await _updateBatchDateRangesUseCase(event.dateRanges);
    result.fold(
      (failure) => emit(DateTimeRangesManagerState.failure(failure.toString())),
      (_) => emit(const DateTimeRangesManagerState.dateRangesBatchUpdated()),
    );
  }
}
