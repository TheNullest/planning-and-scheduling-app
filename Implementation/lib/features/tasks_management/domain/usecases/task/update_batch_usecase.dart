import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchTasksUsecase extends UpdateBatchUsecase<TaskRepository, TaskEntity> {
  UpdateBatchTasksUsecase(super.repository);
}
