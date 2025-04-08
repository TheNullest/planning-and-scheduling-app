import 'package:zamaan/domain/entities/task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/create_entity_usecase.dart';

class CreateTaskUseCase
    extends CreateEntityUseCase<TaskRepository, TaskEntity> {
  CreateTaskUseCase(super.repository);
}
