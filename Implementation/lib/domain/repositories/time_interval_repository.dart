import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/params/get_by_task_ids_and_date_range_params.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';

abstract interface class TaskActivityRepository
    extends BaseRepositoryAbstraction<TaskActivityEntity> {
  EResultFuture<List<TaskActivityEntity>> getTaskActivityByTaskIdAndDateRange(
    GetByTaskIdsAndDateRangeParams params,
  );
  EResultFuture<List<TaskActivityEntity>> getTaskActivityBySubTaskId(
    String subTaskId,
  );
}
