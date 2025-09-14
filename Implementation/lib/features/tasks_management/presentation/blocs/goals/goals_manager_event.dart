part of 'goals_manager_bloc.dart';

@freezed
class GoalsManagerEvent with _$GoalsManagerEvent {
  const factory GoalsManagerEvent.started(
      {@Default([]) List<String> taskIds, @Default([]) List<String> subTaskIds}) = _Started;

  const factory GoalsManagerEvent.create(
    GoalEntity entity,
  ) = _Create;

  const factory GoalsManagerEvent.update(
    GoalEntity entity,
  ) = _Update;

  const factory GoalsManagerEvent.delete(
    String id,
  ) = _Delete;

  const factory GoalsManagerEvent.getByRefIds(List<String> refIds) = _GetByRefIds;
}
