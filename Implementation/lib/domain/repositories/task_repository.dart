import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class TaskRepository extends BaseRepository<TaskEntity> {
  // EResultFuture<List<TaskEntity>> getByStatus(
  //   TaskStatus status, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });

  // EResultFuture<List<TaskEntity>> getArchived({
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });

  // EResultFuture<List<TaskEntity>> getByPriority(
  //   Priority priority, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskEntity>> getByDueDateRange({
  //   required DateTime dueDateFrom,
  //   required DateTime dueDateTo,
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskEntity>> getByCategories(
  //   List<String> categoryIds, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
  // EResultFuture<List<TaskEntity>> getByTags(
  //   List<String> tagIds, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // });
}
