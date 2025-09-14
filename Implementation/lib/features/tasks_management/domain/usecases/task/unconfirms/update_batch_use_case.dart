import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateTasksUseCase extends UpdateUseCase<TaskRepository, TaskEntity> {
  UpdateTasksUseCase(super.repository);
}
