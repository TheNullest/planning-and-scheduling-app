import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/create_goal_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/delete_goal_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/fetch_goals_by_refs_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/update_goal_usecase.dart';

part 'goals_manager_event.dart';
part 'goals_manager_state.dart';
part 'goals_manager_bloc.freezed.dart';

class GoalsManagerBloc extends Bloc<GoalsManagerEvent, GoalsManagerState> {
  GoalsManagerBloc({
    required FetchGoalsByRefsUsecase fetchGoalsByRefsUsecase,
    required CreateGoalUsecase createUsecase,
    required UpdateGoalUsecase updateUsecase,
    required DeleteGoalUsecase deleteUsecase,
  })  : _createUsecase = createUsecase,
        _fetchGoalsByRefsUsecase = fetchGoalsByRefsUsecase,
        _updateUsecase = updateUsecase,
        _deleteUsecase = deleteUsecase,
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

  final FetchGoalsByRefsUsecase _fetchGoalsByRefsUsecase;
  final CreateGoalUsecase _createUsecase;
  final UpdateGoalUsecase _updateUsecase;
  final DeleteGoalUsecase _deleteUsecase;

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
    final result = await _fetchGoalsByRefsUsecase(e.refIds);
    result.fold((failure) => emit(GoalsManagerState.failure(failure.toString())),
        (goals) => emit(GoalsManagerState.fetchedByRefIds(goals)));
  }

  Future<void> _create(
    _Create event,
    Emitter<GoalsManagerState> emit,
  ) async {
    emit(const GoalsManagerState.loading());
    final result = await _createUsecase(event.entity);
    result.fold(
      (failure) => emit(GoalsManagerState.failure(failure.toString())),
      (id) => emit(GoalsManagerState.created(event.entity)),
    );
  }

  Future<void> _update(
    _Update event,
    Emitter<GoalsManagerState> emit,
  ) async {
    final result = await _updateUsecase(event.entity);
    result.fold(
      (failure) => emit(GoalsManagerState.failure(failure.toString())),
      (_) => emit(GoalsManagerState.updated(event.entity.id)),
    );
  }

  Future<void> _delete(
    _Delete event,
    Emitter<GoalsManagerState> emit,
  ) async {
    final result = await _deleteUsecase(event.id);
    result.fold(
      (failure) => emit(GoalsManagerState.failure(failure.toString())),
      (_) => emit(GoalsManagerState.deleted(event.id)),
    );
  }
}
