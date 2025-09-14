import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/get_use_case.dart';

class GetTasksUseCase extends FetcBatchAllUseCase<TaskRepository, TaskEntity> {
  GetTasksUseCase(super.repository);
}
