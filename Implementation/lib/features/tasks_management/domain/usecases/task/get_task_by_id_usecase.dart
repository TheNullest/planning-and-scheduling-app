import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetTaskByIdUsecase extends GetByIdUsecase<TaskRepository, TaskEntity> {
  GetTaskByIdUsecase(super.repository);
}
