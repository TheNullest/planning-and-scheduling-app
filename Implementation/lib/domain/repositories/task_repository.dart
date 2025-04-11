import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class TaskRepository implements BaseRepository<TaskEntity> {
  EResultFuture<List<TaskEntity>> getBatchByStatus(
    TaskStatus status, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
  EResultFuture<List<TaskEntity>> getBatchByPriority(
    Priority priority, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
  EResultFuture<List<TaskEntity>> getBatchByDueDateRange({
    required DateTime dueDateFrom,
    required DateTime dueDateTo,
    bool fromLocal = false,
    bool fromRemote = false,
  });
  EResultFuture<List<TaskEntity>> getBatchByCategories(
    List<String> categoryIds, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
  EResultFuture<List<TaskEntity>> getBatchByTags(
    List<String> tagIds, {
    bool fromLocal = false,
    bool fromRemote = false,
  });

  EResultFuture<TaskEntity?> getBatchByTaskSchedulerId(
    String schedulerId, {
    bool fromLocal = false,
    bool fromRemote = false,
  });
}
