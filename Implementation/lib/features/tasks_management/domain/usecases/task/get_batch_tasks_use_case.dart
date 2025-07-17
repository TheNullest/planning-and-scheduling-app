import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class GetBatchTasksUseCase extends FetcBatchAllUseCase<TaskRepository, TaskEntity> {
  GetBatchTasksUseCase(super.repository);
}
