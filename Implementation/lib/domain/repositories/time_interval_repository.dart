import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/time_interval_entity.dart';
import 'package:zamaan/domain/params/get_by_task_ids_and_date_range_params.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';

abstract interface class TimeIntervalRepository
    extends BaseRepositoryAbstraction<TimeIntervalEntity> {
  EResultFuture<List<TimeIntervalEntity>>
      getTimeIntervalByMainTaskIdAndDateRange(
    GetByTaskIdsAndDateRangeParams params,
  );
  EResultFuture<List<TimeIntervalEntity>> getTimeIntervalBySubTaskId(
    String subTaskId,
  );
}
