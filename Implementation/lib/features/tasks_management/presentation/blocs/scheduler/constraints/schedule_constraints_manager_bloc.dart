import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/schedule_constraint/create_schedule_constraints_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/schedule_constraint/delete_schedule_constraints_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/schedule_constraint/get_by_task_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/schedule_constraint/get_schedule_constraints_list_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/schedule_constraint/update_schedule_constraints_use_case.dart';

part 'schedule_constraints_manager_bloc.freezed.dart';
part 'schedule_constraints_manager_event.dart';
part 'schedule_constraints_manager_state.dart';

class ScheduleConstraintsManagerBloc
    extends Bloc<ScheduleConstraintsManagerEvent, ScheduleConstraintsManagerState> {
  ScheduleConstraintsManagerBloc({
    required GetBatchScheduleCosntraintsListUseCase getConstraintsList,
    required GetScheduleConstraintsByTaskIdUseCase getByTaskId,
    required CreateScheduleConstraintsUseCase create,
    required DeleteScheduleConstraintsUseCase delete,
    required UpdateScheduleConstraintsUseCase update,
  })  : _get = getConstraintsList,
        _getByTaskId = getByTaskId,
        _create = create,
        _delete = delete,
        _update = update,
        super(const _Initial()) {
    on<ScheduleConstraintsManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        create: (e) async => _createConstraints(e, emit),
        delete: (e) async => _deleteConstraints(e, emit),
        get: (e) async => _getConstraints(e, emit),
        getByTaskId: (e) async => _getConstraintsByTaskId(e, emit),
        update: (e) async => _updateConstraints(e, emit),
      );
    });
  }

  final GetScheduleConstraintsByTaskIdUseCase _getByTaskId;
  final GetBatchScheduleCosntraintsListUseCase _get;
  final CreateScheduleConstraintsUseCase _create;
  final DeleteScheduleConstraintsUseCase _delete;
  final UpdateScheduleConstraintsUseCase _update;

  FutureVoid _handleStarted(Emitter<ScheduleConstraintsManagerState> emit) async {
    emit(const ScheduleConstraintsManagerState.initial());
    return;
  }

  FutureVoid _createConstraints(
    _Create event,
    Emitter<ScheduleConstraintsManagerState> emit,
  ) async {
    emit(const ScheduleConstraintsManagerState.loading());
    final response = await _create(event.scheduleConstraints);
    response.fold(
      (failure) => emit(_FailedActionState(failure.message)),
      (id) => emit(
        ScheduleConstraintsManagerState.created(id),
      ),
    );
    return;
  }

  FutureVoid _updateConstraints(
    _Update event,
    Emitter<ScheduleConstraintsManagerState> emit,
  ) async {
    emit(const ScheduleConstraintsManagerState.loading());
    final response = await _update(event.scheduleConstraints);

    response.fold(
      (failure) => emit(_FailedActionState(failure.message)),
      (_) => emit(
        ScheduleConstraintsManagerState.updated(event.scheduleConstraints),
      ),
    );
    return;
  }

  FutureVoid _getConstraints(
    _Get event,
    Emitter<ScheduleConstraintsManagerState> emit,
  ) async {
    emit(const ScheduleConstraintsManagerState.loading());
    final response = await _get();
    response.fold(
      (failure) => emit(_FailedActionState(failure.message)),
      (constraintsList) => emit(
        ScheduleConstraintsManagerState.loadedAll(constraintsList),
      ),
    );
    return;
  }

  FutureVoid _getConstraintsByTaskId(
    _GetByTaskId event,
    Emitter<ScheduleConstraintsManagerState> emit,
  ) async {
    emit(const ScheduleConstraintsManagerState.loading());
    final response = await _getByTaskId(event.id);
    response.fold(
      (failure) => emit(_FailedActionState(failure.message)),
      (constraints) {
        if (constraints != null) {
          emit(
            ScheduleConstraintsManagerState.loadedByTaskId(constraints),
          );
        }
      },
    );
    return;
  }

  FutureVoid _deleteConstraints(
    _Delete event,
    Emitter<ScheduleConstraintsManagerState> emit,
  ) async {
    emit(const ScheduleConstraintsManagerState.loading());
    final response = await _delete(event.id);
    response.fold(
      (failure) => emit(_FailedActionState(failure.message)),
      (_) => emit(
        const ScheduleConstraintsManagerState.deleted(),
      ),
    );
    return;
  }
}
