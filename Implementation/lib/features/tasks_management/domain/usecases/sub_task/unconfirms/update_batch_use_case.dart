import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchSubTasksUseCase extends UpdateBatchUseCase<SubTaskRepository, SubTaskEntity> {
  UpdateBatchSubTasksUseCase(super.repository);
}
