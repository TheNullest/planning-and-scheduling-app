import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/base/base_data_source_abstraction.dart';
import 'package:zamaan/domain/entities/task_entity.dart';

abstract class TaskDataSource<TaskModel extends TaskEntity>
    extends BaseDataSourceAbstraction<TaskModel> {
  EResultFuture<List<TaskModel>> getTasksByCategories(
    List<String> categoryIds,
  );
  EResultFuture<List<TaskModel>> getTasksByDueDate(DateTime dueDate);
  EResultFuture<List<TaskModel>> getTasksByPriority(Priority priority);
  EResultFuture<List<TaskModel>> getTasksByStatus(Status status);
  EResultFuture<List<TaskModel>> getTasksByFixedTags(List<String> tagIds);

  EResultFuture<TaskModel> getTaskByTaskSchedulerId(String schedulerId);
}
