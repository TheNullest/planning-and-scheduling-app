import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteAllSelectedTasksUseCase extends DeleteBatchUseCase<TaskRepository> {
  DeleteAllSelectedTasksUseCase(super.repository);
}
