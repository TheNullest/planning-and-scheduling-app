import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_day_data_source.dart';

/// A data source implementation for managing scheduleConstraints scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data operations
/// and provides additional methods for specific scheduleConstraints-related queries.
class ScheduledDayHiveDataSourceImpl extends HiveDataSource<ScheduledDayHiveModel>
    implements ScheduledDayLocalDataSource<ScheduledDayHiveModel> {
  ScheduledDayHiveDataSourceImpl({
    HiveBoxRunner<ScheduledDayHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveBoxRunner<ScheduledDayHiveModel>>(),
        super(hiveServices: hiveBox);
  final HiveBoxRunner<ScheduledDayHiveModel> _hiveBox;

  @override
  EResultFuture<List<ScheduledDayHiveModel>> getBatchByConstraintId(String constraintId) async =>
      _hiveBox.runBoxOperation(
        job: (box) async =>
            box.values.where((item) => item.scheduleConstraintId == constraintId).toList(),
      );
}
