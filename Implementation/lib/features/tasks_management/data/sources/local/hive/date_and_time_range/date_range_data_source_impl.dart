import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/constraint_date_time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/date_range_source.dart';

class DateRangeHiveDataSourceImpl extends HiveDataSource<DateRangeHiveModel>
    implements DateRangeLocalDataSource<DateRangeHiveModel> {
  DateRangeHiveDataSourceImpl({HiveBoxRunner<DateRangeHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveBoxRunner<DateRangeHiveModel>>(),
        super(hiveServices: hiveBox);
  final HiveBoxRunner<DateRangeHiveModel> _hiveBox;

  @override
  EResultFuture<List<DateRangeHiveModel>> getByTaskId(String taskId) async =>
      _hiveBox.runBoxOperation<List<DateRangeHiveModel>>(
        job: (box) async => box.values.where((item) => item.parentId == taskId).toList(),
      );
}
