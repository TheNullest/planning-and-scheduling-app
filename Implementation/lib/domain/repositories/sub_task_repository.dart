import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class SubTaskRepository extends BaseRepository<SubTaskEntity> {
  EResultFuture<List<SubTaskEntity>> getBatchByTaskId(MeasurementUnit taskId);
  EResultFuture<List<SubTaskEntity>> getBatchByStatus(TaskStatus status);
  EResultFuture<List<SubTaskEntity>> getBatchByPriority(Priority priority);
}
