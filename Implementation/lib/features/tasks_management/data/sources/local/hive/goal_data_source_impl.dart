import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/goal_data_source.dart';

class GoalHiveDataSourceImpl extends HiveDataSource<GoalHiveModel>
    implements GoalLocalDataSource<GoalHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<TaskHiveModel>] like this
  GoalHiveDataSourceImpl({HiveBoxRunner<GoalHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveBoxRunner<GoalHiveModel>>(),
        super(hiveServices: hiveBox);
  final HiveBoxRunner<GoalHiveModel> _hiveBox;

  @override
  EResultFuture<List<GoalHiveModel>> getGoalsByTaskId(
    String taskId,
  ) async =>
      _hiveBox.runBoxOperation<List<GoalHiveModel>>(
        job: (box) async => box.values.where((goalModel) => goalModel.refType == taskId).toList(),
      );

  @override
  EResultFuture<GoalHiveModel> getGoalBySubTaskId(String subTaskId) async =>
      _hiveBox.runBoxOperation<GoalHiveModel>(
        job: (box) async => box.values.firstWhere((goalModel) => goalModel.refId == subTaskId),
      );
}
