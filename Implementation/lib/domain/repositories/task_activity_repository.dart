import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class TaskActivityRepository implements BaseRepository<TaskActivityEntity> {
  EResultFuture<List<TaskActivityEntity>> getBatchByTaskIdAndDateRange({
    required String taskId,
    required DateTime startAt,
    required DateTime dueDate,
    bool fromLocal = false,
    bool fromRemote = false,
  });
  EResultFuture<List<TaskActivityEntity>> getBatchBySubTaskId(
    String subTaskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
  EResultFuture<List<TaskActivityEntity>> getBatchByTaskId(
    String taskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
}
