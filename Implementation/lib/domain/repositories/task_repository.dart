import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class TaskRepository extends BaseRepository<TaskEntity> {
  // EResultFuture<List<TaskEntity>> getBatchByStatus(
  //   TaskStatus status, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });

  // EResultFuture<List<TaskEntity>> getBatchArchived({
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });

  // EResultFuture<List<TaskEntity>> getBatchByPriority(
  //   Priority priority, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskEntity>> getBatchByDueDateRange({
  //   required DateTime dueDateFrom,
  //   required DateTime dueDateTo,
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskEntity>> getBatchByCategories(
  //   List<String> categoryIds, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskEntity>> getBatchByTags(
  //   List<String> tagIds, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
}
