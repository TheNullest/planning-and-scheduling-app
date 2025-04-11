import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchSubTasksUsecase extends UpdateBatchUsecase<SubTaskRepository, SubTaskEntity> {
  UpdateBatchSubTasksUsecase(super.repository);
}
