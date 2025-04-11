import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetTaskUsecase extends GetByIdUsecase<TaskRepository, TaskEntity> {
  GetTaskUsecase(super.repository);
}
