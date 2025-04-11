import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';

abstract class TaskDataSource<Model> extends BaseDataSource<Model> {
  EResultFuture<List<Model>> getBatchByStatus(Status status,);
  EResultFuture<List<Model>> getBatchByPriority(Priority priority);
  EResultFuture<List<Model>> getBatchByDueDateRange(DateTime dueDateFrom, DateTime dueDateTo);
  EResultFuture<List<Model>> getBatchByCategories(List<String> categoryIds);
  EResultFuture<List<Model>> getBatchByFixedTags(List<String> tagIds);

  EResultFuture<Model> getByTaskSchedulerId(String schedulerId);
}
