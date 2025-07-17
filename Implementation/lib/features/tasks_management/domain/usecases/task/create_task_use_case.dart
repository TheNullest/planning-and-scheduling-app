import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateTaskUseCase extends CreateUseCase<TaskRepository, TaskEntity> {
  CreateTaskUseCase(super.repository);
}
