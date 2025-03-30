import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal_entity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';

abstract interface class GoalRepository
    extends BaseRepositoryAbstraction<GoalEntity> {
  EResultFuture<List<GoalEntity>> getGoalsByMainTaskId(String mainTaskId);
  EResultFuture<GoalEntity> getGoalBySubTaskId(String subTaskId);
}
