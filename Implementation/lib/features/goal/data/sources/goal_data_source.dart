import 'package:zamaan/core/sources/base_data_source_abstraction.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/goal/domain/entities/goal_entity.dart';

abstract class GoalDataSource<GoalModel extends GoalEntity>
    extends BaseDataSourceAbstraction<GoalModel> {
  ResultFuture<List<GoalModel>> getGoalsByMainTaskId(
    String mainTaskId,
  );
  ResultFuture<GoalModel> getGoalBySubTaskId(String subTaskId);
}
