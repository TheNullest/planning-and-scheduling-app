import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/base/base_data_source_abstraction.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';

abstract class MainTaskDataSource<MainTaskModel extends MainTaskEntity>
    extends BaseDataSourceAbstraction<MainTaskModel> {
  EResultFuture<List<MainTaskModel>> getMainTasksByCategories(
    List<String> categoryIds,
  );
  EResultFuture<List<MainTaskModel>> getMainTasksByDueDate(DateTime dueDate);
  EResultFuture<List<MainTaskModel>> getMainTasksByPriority(Priority priority);
  EResultFuture<List<MainTaskModel>> getMainTasksByStatus(Status status);
  EResultFuture<List<MainTaskModel>> getMainTasksByTags(List<String> tagIds);
  EResultFuture<MainTaskModel> getMainTaskByTaskSchedulerId(String schedulerId);
}
