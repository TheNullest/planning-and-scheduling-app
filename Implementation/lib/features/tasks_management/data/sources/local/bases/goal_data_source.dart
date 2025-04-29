import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';

abstract class GoalLocalDataSource<Model> extends BaseDataSource<Model> {
  EResultFuture<List<Model>> getGoalsByTaskId(String taskId);
  EResultFuture<Model> getGoalBySubTaskId(String subTaskId);
}
