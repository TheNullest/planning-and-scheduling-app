import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';

abstract class SubTaskLocalDataSource<Model> extends BaseDataSource<Model> {
  EResultFuture<List<Model>> getByPriority(
    Priority priority,
  );

  EResultFuture<List<Model>> getByStatus(
    TaskStatus status,
  );

  EResultFuture<List<Model>> getByTaskIds(
    List<String> taskIds,
  );

  EResultFutureVoid deleteByTaskId(
    String taskId,
  );
}
