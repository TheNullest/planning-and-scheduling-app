import 'package:zamaan/core/enums/datasource_policy.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class SubTaskRepository implements BaseRepository<SubTaskEntity> {
  EResultFuture<List<SubTaskEntity>> getBatchByTaskId(
    String taskId, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });
  EResultFuture<List<SubTaskEntity>> getBatchByStatus(
    TaskStatus status, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });
  EResultFuture<List<SubTaskEntity>> getBatchByPriority(
    Priority priority, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });
}
