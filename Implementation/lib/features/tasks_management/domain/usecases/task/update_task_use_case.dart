import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateTaskUseCase extends UpdateUseCase<TaskEntity, TaskRepository> {
  UpdateTaskUseCase(super.repository);
}
