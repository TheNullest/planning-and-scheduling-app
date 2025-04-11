import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateTaskUseCase extends CreateUsecase<TaskRepository, TaskEntity> {
  CreateTaskUseCase(super.repository);
}
