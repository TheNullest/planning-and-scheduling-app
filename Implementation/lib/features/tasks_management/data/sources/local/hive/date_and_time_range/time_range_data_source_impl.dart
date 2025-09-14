import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/time_range_source.dart';

class TimeRangeHiveDataSourceImpl extends HiveDataSource<TimeRangeHiveModel>
    implements TimeRangeLocalDataSource<TimeRangeHiveModel> {
  TimeRangeHiveDataSourceImpl({HiveBoxRunner<TimeRangeHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveBoxRunner<TimeRangeHiveModel>>(),
        super(hiveServices: hiveBox);
  final HiveBoxRunner<TimeRangeHiveModel> _hiveBox;

  @override
  EResultFuture<List<TimeRangeHiveModel>> getByTaskId(String taskId) async =>
      _hiveBox.runBoxOperation<List<TimeRangeHiveModel>>(
        job: (box) async => box.values.where((item) => item.parentId == taskId).toList(),
      );
}
