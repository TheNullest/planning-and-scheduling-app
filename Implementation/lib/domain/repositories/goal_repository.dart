import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class GoalRepository extends BaseRepository<GoalEntity> {
  EResultFuture<List<GoalEntity>> getGoalsByTaskId(String taskId);
  EResultFuture<GoalEntity?> getGoalBySubTaskId(String subTaskId);
}
