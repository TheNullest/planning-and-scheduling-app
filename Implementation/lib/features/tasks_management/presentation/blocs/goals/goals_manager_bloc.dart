import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/create_goal_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/delete_goal_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/fetch_goals_by_refs_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/update_goal_use_case.dart';

part 'goals_manager_event.dart';
part 'goals_manager_state.dart';
part 'goals_manager_bloc.freezed.dart';

class GoalsManagerBloc extends Bloc<GoalsManagerEvent, GoalsManagerState> {
  GoalsManagerBloc({
    required FetchGoalsByRefsUseCase fetchGoalsByRefsUseCase,
    required CreateGoalUseCase createUseCase,
    required UpdateGoalUseCase updateUseCase,
    required DeleteGoalUseCase deleteUseCase,
  })  : _createUseCase = createUseCase,
        _fetchGoalsByRefsUseCase = fetchGoalsByRefsUseCase,
        _updateUseCase = updateUseCase,
        _deleteUseCase = deleteUseCase,
        super(const _Initial()) {
    on<GoalsManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _started(e, emit),
        create: (e) async => _create(e, emit),
        update: (e) async => _update(e, emit),
        delete: (e) async => _delete(e, emit),
        fetchByRefIds: (e) async => _fetchByRefIds(e, emit),
      );
    });
  }

  final FetchGoalsByRefsUseCase _fetchGoalsByRefsUseCase;
  final CreateGoalUseCase _createUseCase;
  final UpdateGoalUseCase _updateUseCase;
  final DeleteGoalUseCase _deleteUseCase;

  Future<void> _started(
    _Started event,
    Emitter<GoalsManagerState> emit,
  ) async {
    emit(const GoalsManagerState.loading());
    await Future.wait([
      _fetchByRefIds(_FetchByRefIds(event.taskIds), emit),
    ]);
  }

  Future<void> _fetchByRefIds(
    _FetchByRefIds e,
    Emitter<GoalsManagerState> emit,
  ) async {
    emit(const GoalsManagerState.loading());
    final result = await _fetchGoalsByRefsUseCase(e.refIds);
    result.fold((failure) => emit(GoalsManagerState.failure(failure.toString())),
        (goals) => emit(GoalsManagerState.fetchedByRefIds(goals)));
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
