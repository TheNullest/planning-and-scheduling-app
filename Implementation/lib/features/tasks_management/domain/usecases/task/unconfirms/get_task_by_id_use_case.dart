import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/get_by_id_use_case.dart';

class GetTaskByIdUseCase extends GetByIdUseCase<TaskRepository, TaskEntity> {
  GetTaskByIdUseCase(super.repository);
}
