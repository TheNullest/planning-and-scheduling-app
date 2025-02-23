import 'package:zamaan/core/constants/hive_box_names.dart';
import 'package:zamaan/core/services/hive_services.dart';
import 'package:zamaan/core/sources/base_local_data_source_abstraction.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/goal/data/models/goal_local_model.dart';
import 'package:zamaan/features/goal/data/sources/goal_data_source.dart';

class HiveGoalDataSourceImpl
    extends BaseLocalDataSourceAbstraction<GoalLocalModel>
    implements GoalDataSource<GoalLocalModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<MainTaskLocalModel>] like this
  HiveGoalDataSourceImpl({HiveServices<GoalLocalModel>? hiveBox})
      : _hiveBox = hiveBox ?? HiveServices<GoalLocalModel>(),
        super(hiveBox: hiveBox, HiveBoxConstants.GOALS_BOX);
  final String _boxName = HiveBoxConstants.GOALS_BOX;
  final HiveServices<GoalLocalModel> _hiveBox;

  @override
  ResultFuture<List<GoalLocalModel>> getGoalsByMainTaskId(
    String mainTaskId,
  ) async =>
      _hiveBox.operator<List<GoalLocalModel>>(
        job: (box) async => box.values
            .where((goalModel) => goalModel.mainTaskId == mainTaskId)
            .toList(),
        boxName: _boxName,
      );

  @override
  ResultFuture<GoalLocalModel> getGoalBySubTaskId(String subTaskId) async =>
      _hiveBox.operator<GoalLocalModel>(
        job: (box) async => box.values
            .firstWhere((goalModel) => goalModel.subTaskId == subTaskId),
        boxName: _boxName,
      );
}
