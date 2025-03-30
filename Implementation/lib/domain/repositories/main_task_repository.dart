import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';

abstract interface class MainTaskRepository
    extends BaseRepositoryAbstraction<MainTaskEntity> {
  EResultFuture<List<MainTaskEntity>> getMainTasksByStatus(Status status);
  EResultFuture<List<MainTaskEntity>> getMainTasksByPriority(Priority priority);
  EResultFuture<List<MainTaskEntity>> getMainTasksByDueDate(DateTime dueDate);
  EResultFuture<List<MainTaskEntity>> getMainTasksByCategories(
    List<String> categoryIds,
  );
  EResultFuture<List<MainTaskEntity>> getMainTasksByTags(List<String> tagIds);
  EResultFuture<MainTaskEntity> getMainTaskByTaskSchedulerId(
      String schedulerId);
}
