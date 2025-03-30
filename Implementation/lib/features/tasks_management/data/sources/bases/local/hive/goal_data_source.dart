import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/base/base_data_source_abstraction.dart';
import 'package:zamaan/domain/entities/goal_entity.dart';

abstract class GoalDataSource<GoalModel extends GoalEntity>
    extends BaseDataSourceAbstraction<GoalModel> {
  EResultFuture<List<GoalModel>> getGoalsByMainTaskId(
    String mainTaskId,
  );
  EResultFuture<GoalModel> getGoalBySubTaskId(String subTaskId);
}
