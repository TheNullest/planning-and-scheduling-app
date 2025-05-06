import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/time_range_source.dart';

class TimeRangeDataSourceImpl extends HiveDataSource<TimeRangeHiveModel>
    implements TimeRangeLocalDataSource<TimeRangeHiveModel> {
  TimeRangeDataSourceImpl();
}
