import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive/base_hive_data_source_abstraction.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/tasks/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks/data/sources/bases/local/hive/goal_data_source.dart';

class HiveGoalDataSourceImpl
    extends BaseLocalDataSourceAbstraction<GoalHiveModel>
    implements GoalDataSource<GoalHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<MainTaskHiveModel>] like this
  HiveGoalDataSourceImpl({HiveServices<GoalHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveServices<GoalHiveModel>>(),
        super(hiveServices: hiveBox, HiveBoxConstants.goalsBox);
  final String _boxName = HiveBoxConstants.goalsBox;
  final HiveServices<GoalHiveModel> _hiveBox;

  @override
  ResultFuture<List<GoalHiveModel>> getGoalsByMainTaskId(
    String mainTaskId,
  ) async =>
      _hiveBox.operator<List<GoalHiveModel>>(
        job: (box) async => box.values
            .where((goalModel) => goalModel.mainTaskId == mainTaskId)
            .toList(),
        boxName: _boxName,
      );

  @override
  ResultFuture<GoalHiveModel> getGoalBySubTaskId(String subTaskId) async =>
      _hiveBox.operator<GoalHiveModel>(
        job: (box) async => box.values
            .firstWhere((goalModel) => goalModel.subTaskId == subTaskId),
        boxName: _boxName,
      );
}
