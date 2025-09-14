import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/create_goal_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/delete_goal_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/get_goals_by_refs_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/update_goal_use_case.dart';

part 'goals_manager_event.dart';
part 'goals_manager_state.dart';
part 'goals_manager_bloc.freezed.dart';

class GoalsManagerBloc extends Bloc<GoalsManagerEvent, GoalsManagerState> {
  GoalsManagerBloc({
    required GetGoalsByRefsUseCase getGoalsByRefsUseCase,
    required CreateGoalUseCase createUseCase,
    required UpdateGoalUseCase updateUseCase,
    required DeleteGoalUseCase deleteUseCase,
  })  : _createUseCase = createUseCase,
        _getGoalsByRefsUseCase = getGoalsByRefsUseCase,
        _updateUseCase = updateUseCase,
        _deleteUseCase = deleteUseCase,
        super(const _Initial()) {
    on<GoalsManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _started(e, emit),
        create: (e) async => _create(e, emit),
        update: (e) async => _update(e, emit),
        delete: (e) async => _delete(e, emit),
        getByRefIds: (e) async => _getByRefIds(e, emit),
      );
    });
  }

  final GetGoalsByRefsUseCase _getGoalsByRefsUseCase;
  final CreateGoalUseCase _createUseCase;
  final UpdateGoalUseCase _updateUseCase;
  final DeleteGoalUseCase _deleteUseCase;

  Future<void> _started(
    _Started event,
    Emitter<GoalsManagerState> emit,
  ) async {
    emit(const GoalsManagerState.loading());
    await Future.wait([
      _getByRefIds(_GetByRefIds(event.taskIds), emit),
    ]);
  }

  Future<void> _getByRefIds(
    _GetByRefIds e,
    Emitter<GoalsManagerState> emit,
  ) async {
    emit(const GoalsManagerState.loading());
    final result = await _getGoalsByRefsUseCase(e.refIds);
    result.fold((failure) => emit(GoalsManagerState.failure(failure.toString())),
        (goals) => emit(GoalsManagerState.loadedByRefIds(goals)));
  }

  Future<void> _create(
    _Create event,
    Emitter<GoalsManagerState> emit,
  ) async {
    emit(const GoalsManagerState.loading());
    final result = await _createUseCase(event.entity);
    result.fold(
      (failure) => emit(GoalsManagerState.failure(failure.toString())),
      (id) => emit(GoalsManagerState.created(event.entity)),
    );
  }

  Future<void> _update(
    _Update event,
    Emitter<GoalsManagerState> emit,
  ) async {
    final result = await _updateUseCase(event.entity);
    result.fold(
      (failure) => emit(GoalsManagerState.failure(failure.toString())),
      (_) => emit(GoalsManagerState.updated(event.entity)),
    );
  }

  Future<void> _delete(
    _Delete event,
    Emitter<GoalsManagerState> emit,
  ) async {
    final result = await _deleteUseCase(event.id);
    result.fold(
      (failure) => emit(GoalsManagerState.failure(failure.toString())),
      (_) => emit(GoalsManagerState.deleted(event.id)),
    );
  }
}
