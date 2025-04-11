import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetTasksUsecase extends GetAllUsecase<TaskRepository, TaskEntity> {
  GetTasksUsecase(super.repository);
}
