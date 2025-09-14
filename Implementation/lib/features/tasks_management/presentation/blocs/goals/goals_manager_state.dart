part of 'goals_manager_bloc.dart';

@freezed
class GoalsManagerState with _$GoalsManagerState {
  const factory GoalsManagerState.initial() = _Initial;
  const factory GoalsManagerState.loading() = _Loading;

  const factory GoalsManagerState.failure(String message) = _Failure;

  const factory GoalsManagerState.created(GoalEntity cat) = _Created;

  const factory GoalsManagerState.updated(GoalEntity cat) = _Updated;

  const factory GoalsManagerState.deleted(String id) = _Deleted;

  const factory GoalsManagerState.loadedByRefIds(List<GoalEntity> goals) = _GetedByRefIds;
}
