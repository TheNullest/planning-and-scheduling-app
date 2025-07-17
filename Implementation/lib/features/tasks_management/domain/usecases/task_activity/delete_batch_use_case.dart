import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteAllSelectedTaskActivitysUseCase extends DeleteBatchUseCase<TaskActivityRepository> {
  DeleteAllSelectedTaskActivitysUseCase(super.repository);
}
