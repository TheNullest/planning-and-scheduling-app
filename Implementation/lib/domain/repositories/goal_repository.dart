import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/enums/datasource_policy.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class GoalRepository implements BaseRepository<GoalEntity> {
  EResultFuture<List<GoalEntity>> getGoalsByTaskId(
    String taskId, {

    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });
  EResultFuture<GoalEntity?> getGoalBySubTaskId(
    String subTaskId, {

    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });
}
