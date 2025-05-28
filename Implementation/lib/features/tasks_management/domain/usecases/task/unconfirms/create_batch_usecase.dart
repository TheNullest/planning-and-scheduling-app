import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchTasksUsecase extends CreateBatchUsecase<TaskRepository, TaskEntity> {
  CreateBatchTasksUsecase(super.repository);
}
