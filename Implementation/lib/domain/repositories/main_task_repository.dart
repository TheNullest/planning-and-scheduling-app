import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_entity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';

abstract interface class TaskRepository
    extends BaseRepositoryAbstraction<TaskEntity> {
  EResultFuture<List<TaskEntity>> getTasksByStatus(Status status);
  EResultFuture<List<TaskEntity>> getTasksByPriority(Priority priority);
  EResultFuture<List<TaskEntity>> getTasksByDueDate(DateTime dueDate);
  EResultFuture<List<TaskEntity>> getTasksByCategories(
    List<String> categoryIds,
  );
  EResultFuture<List<TaskEntity>> getTasksByTags(List<String> tagIds);

  EResultFuture<TaskEntity> getTaskByTaskSchedulerId(
    String schedulerId,
  );
}
