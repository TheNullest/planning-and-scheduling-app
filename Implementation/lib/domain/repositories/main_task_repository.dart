import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';

abstract interface class MainTaskRepository
    extends BaseRepositoryAbstraction<MainTaskEntity> {
  ResultFuture<List<MainTaskEntity>> getMainTasksByStatus(Status status);
  ResultFuture<List<MainTaskEntity>> getMainTasksByPriority(Priority priority);
  ResultFuture<List<MainTaskEntity>> getMainTasksByDueDate(DateTime dueDate);
  ResultFuture<List<MainTaskEntity>> getMainTasksByCategories(
    List<String> categoryIds,
  );
  ResultFuture<List<MainTaskEntity>> getMainTasksByTags(List<String> tagIds);
  ResultFuture<MainTaskEntity> getMainTaskByTaskSchedulerId(String schedulerId);
}
