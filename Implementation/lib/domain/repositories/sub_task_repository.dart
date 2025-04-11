import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class SubTaskRepository implements BaseRepository<SubTaskEntity> {
  EResultFuture<List<SubTaskEntity>> getBatchByTaskId(
    String taskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
  EResultFuture<List<SubTaskEntity>> getBatchByStatus(
    TaskStatus status, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
  EResultFuture<List<SubTaskEntity>> getBatchByPriority(
    Priority priority, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
}
