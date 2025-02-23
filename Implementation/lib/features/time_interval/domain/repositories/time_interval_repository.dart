import 'package:zamaan/core/repositories/base_repository_abstraction.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/task_scheduler/domain/params/get_by_task_ids_and_date_range_params.dart';
import 'package:zamaan/features/time_interval/domain/entities/time_interval_entity.dart';

abstract interface class TimeIntervalRepository
    extends BaseRepositoryAbstraction<TimeIntervalEntity> {
  ResultFuture<List<TimeIntervalEntity>>
      getTimeIntervalByMainTaskIdAndDateRange(
    GetByTaskIdsAndDateRangeParams params,
  );
  ResultFuture<List<TimeIntervalEntity>> getTimeIntervalBySubTaskId(
    String subTaskId,
  );
}
