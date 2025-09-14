import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';

abstract class TimeRangeLocalDataSource<TimeRange> extends BaseDataSource<TimeRange> {
  EResultFuture<List<TimeRange>> getByTaskId(String taskId);
}
