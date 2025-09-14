import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetTasksByIdsUseCase extends GetBatchByIdsUseCase<TaskRepository, TaskEntity> {
  GetTasksByIdsUseCase(super.repository);
}
