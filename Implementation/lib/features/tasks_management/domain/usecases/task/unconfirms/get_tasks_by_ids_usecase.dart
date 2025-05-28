import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetTasksByIdsUsecase extends GetByIdsUsecase<TaskRepository, TaskEntity> {
  GetTasksByIdsUsecase(super.repository);
}
