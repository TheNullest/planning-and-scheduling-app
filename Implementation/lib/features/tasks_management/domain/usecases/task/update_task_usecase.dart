import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateTaskUseCase extends UpdateUsecase<TaskEntity, TaskRepository> {
  UpdateTaskUseCase(super.repository);
}
