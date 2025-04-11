import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class GoalRepository implements BaseRepository<GoalEntity> {
  EResultFuture<List<GoalEntity>> getGoalsByTaskId(
    String taskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
  EResultFuture<GoalEntity?> getGoalBySubTaskId(
    String subTaskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
}
