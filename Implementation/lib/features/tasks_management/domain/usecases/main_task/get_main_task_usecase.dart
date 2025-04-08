import 'package:zamaan/domain/entities/task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/get_entity_usecase.dart';

class GetTaskUsecase extends GetEntityUseCase<TaskRepository, TaskEntity> {
  GetTaskUsecase(super.repository);
}
