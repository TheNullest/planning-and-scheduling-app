import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';

abstract class ScheduledDayTimeLocalDataSource<Model> extends BaseDataSource<Model> {
  EResultFuture<List<Model>> getByTaskId(String constraintId);
}
