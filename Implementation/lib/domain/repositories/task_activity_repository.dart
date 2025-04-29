import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class TaskActivityRepository extends BaseRepository<TaskActivityEntity> {
  // EResultFuture<List<TaskActivityEntity>> getBatchByTaskIdAndDateRange({
  //   required String taskId,
  //   required DateTime startAt,
  //   required DateTime dueDate,
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskActivityEntity>> getBatchBySubTaskId(
  //   String subTaskId, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskActivityEntity>> getBatchByTaskId(
  //   String taskId, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
}
