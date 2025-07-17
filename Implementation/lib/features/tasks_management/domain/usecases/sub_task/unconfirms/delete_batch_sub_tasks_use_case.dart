import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteBatchSubTasksUseCase extends DeleteBatchUseCase<SubTaskRepository> {
  DeleteBatchSubTasksUseCase(super.repository);
}
