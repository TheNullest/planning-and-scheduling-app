import 'package:zamaan/core/enums/priority_enum.dart';
import 'package:zamaan/core/enums/status_enum.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';

abstract class SubTaskDataSource<Model> extends BaseDataSource<Model> {
  EResultFuture<List<Model>> getBatchByPriority(
    Priority priority,
  );

  EResultFuture<List<Model>> getBatchByStatus(
    Status status,
  );

  EResultFuture<List<Model>> getBatchByTaskId(
    String taskId,
  );
}
