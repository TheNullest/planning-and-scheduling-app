
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchSubTasksUseCase extends CreateBatchUseCase<SubTaskRepository, SubTaskEntity> {
  CreateBatchSubTasksUseCase(super.repository);
}
