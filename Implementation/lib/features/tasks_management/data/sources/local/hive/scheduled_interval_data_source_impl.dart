import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_interval_data_source.dart';

/// A data source implementation for managing scheduleConstraints scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data operations
/// and provides additional methods for specific scheduleConstraints-related queries.
class ScheduledIntervalHiveDataSourceImpl extends HiveDataSource<ScheduledIntervalHiveModel>
    implements ScheduledIntervalLocalDataSource<ScheduledIntervalHiveModel> {
  ScheduledIntervalHiveDataSourceImpl({
    HiveBoxRunner<ScheduledIntervalHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveBoxRunner<ScheduledIntervalHiveModel>>(),
        super(hiveServices: hiveBox);
  final HiveBoxRunner<ScheduledIntervalHiveModel> _hiveBox;

  @override
  EResultFuture<List<ScheduledIntervalHiveModel>> getBatchByConstraintId(
    String constraintId,
  ) async =>
      _hiveBox.runBoxOperation(
        job: (box) async =>
            box.values.where((item) => item.scheduleConstraintId == constraintId).toList(),
      );
}
