import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task_entity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';

abstract interface class SubTaskRepository
    extends BaseRepositoryAbstraction<SubTaskEntity> {
  EResultFuture<List<SubTaskEntity>> getSubTasksByMainTaskId(String mainTaskId);
  EResultFuture<List<SubTaskEntity>> getSubTasksByStatus(Status status);
  EResultFuture<List<SubTaskEntity>> getSubTasksByPriority(Priority priority);
}
