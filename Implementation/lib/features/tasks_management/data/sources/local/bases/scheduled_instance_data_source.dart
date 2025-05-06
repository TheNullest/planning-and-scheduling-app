import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';

abstract class ScheduledInstanceLocalDataSource<Model> extends BaseDataSource<Model> {
  /// Retrieves a batch of scheduled instances for a specific day.
  ///
  /// [date] - The date for which to retrieve the scheduled instances.
  ///
  /// Returns a [EResultFuture] containing a list of [Model] objects.
  EResultFuture<List<Model>> getBatchByDay(DateTime date);

  EResultFuture<List<Model>> getBatchBySchedulers(List<String> schedulerIds);
  EResultFutureVoid deleteBySchedulerIds(List<String> schedulerIds);
}
