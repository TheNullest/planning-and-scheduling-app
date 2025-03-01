import 'package:zamaan/features/auth/presentation/constants/hive_box_constants.dart';
import 'package:zamaan/infrastructure/services/hive_services.dart';
import 'package:zamaan/data/sources/base_local_data_source_abstraction.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/tasks/data/models/local/hive/goal_local_model.dart';
import 'package:zamaan/features/tasks/data/sources/bases/local/hive/goal_data_source.dart';

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
