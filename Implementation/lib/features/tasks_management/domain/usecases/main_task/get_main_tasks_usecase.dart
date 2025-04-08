import 'package:zamaan/domain/entities/task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/get_entities_usecase.dart';

class GetTasksUsecase extends GetEntitiesUseCase<TaskRepository, TaskEntity> {
  GetTasksUsecase(super.repository);
}
