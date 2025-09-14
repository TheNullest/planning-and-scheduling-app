import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';

abstract class DateRangeLocalDataSource<DataRange> extends BaseDataSource<DataRange> {
  EResultFuture<List<DataRange>> getByTaskId(String taskId);
}
