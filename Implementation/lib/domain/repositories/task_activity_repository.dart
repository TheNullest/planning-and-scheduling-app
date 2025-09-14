import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class TaskActivityRepository extends BaseRepository<TaskActivityEntity> {
  // EResultFuture<List<TaskActivityEntity>> getByTaskIdAndDateRange({
  //   required String taskId,
  //   required DateTime startTime,
  //   required DateTime dueDate,
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskActivityEntity>> getBySubTaskId(
  //   String subTaskId, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskActivityEntity>> getByTaskId(
  //   String taskId, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
}
