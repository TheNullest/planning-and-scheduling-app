import 'package:zamaan/domain/entities/task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/update_entity_usecase.dart';

class UpdateTaskUseCase
    extends UpdateEntityUseCase<TaskEntity, TaskRepository> {
  UpdateTaskUseCase(super.repository);
}
