import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/date_time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/date_range_source.dart';

class DateRangeDataSourceImpl extends HiveDataSource<DateRangeHiveModel>
    implements DateRangeLocalDataSource<DateRangeHiveModel> {
  DateRangeDataSourceImpl();
}
