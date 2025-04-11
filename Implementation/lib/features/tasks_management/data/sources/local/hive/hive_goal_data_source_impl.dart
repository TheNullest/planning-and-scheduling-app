import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/goal_data_source.dart';

class HiveGoalDataSourceImpl extends HiveDataSource<GoalHiveModel>
    implements GoalDataSource<GoalHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<TaskHiveModel>] like this
  HiveGoalDataSourceImpl({HiveServices<GoalHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveServices<GoalHiveModel>>(),
        super(hiveServices: hiveBox, HiveBoxConstants.goalsBox);
  String get _boxName => HiveBoxConstants.goalsBox;
  final HiveServices<GoalHiveModel> _hiveBox;

  @override
  EResultFuture<List<GoalHiveModel>> getGoalsByTaskId(
    String taskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      _hiveBox.operator<List<GoalHiveModel>>(
        job: (box) async => box.values.where((goalModel) => goalModel.taskId == taskId).toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<GoalHiveModel> getGoalBySubTaskId(
    String subTaskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      _hiveBox.operator<GoalHiveModel>(
        job: (box) async => box.values.firstWhere((goalModel) => goalModel.subTaskId == subTaskId),
        boxName: _boxName,
      );
}
