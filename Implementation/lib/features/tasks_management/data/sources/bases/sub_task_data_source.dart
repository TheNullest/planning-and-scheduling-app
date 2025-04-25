import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';

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
