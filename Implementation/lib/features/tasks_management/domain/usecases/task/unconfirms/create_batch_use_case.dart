import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchTasksUseCase extends CreateBatchUseCase<TaskRepository, TaskEntity> {
  CreateBatchTasksUseCase(super.repository);
}
