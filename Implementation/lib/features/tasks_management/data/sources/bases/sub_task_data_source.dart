import 'package:zamaan/core/enums/priority.dart';
import 'package:zamaan/core/enums/task_status.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';

abstract class SubTaskDataSource<Model> extends BaseDataSource<Model> {
  EResultFuture<List<Model>> getBatchByPriority(
    Priority priority,
  );

  EResultFuture<List<Model>> getBatchByStatus(
    TaskStatus status,
  );

  EResultFuture<List<Model>> getBatchByTaskId(
    String taskId,
  );
}
