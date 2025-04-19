import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchScheduledTasksUsecase
    extends UpdateBatchUsecase<ScheduledTaskRepository, ScheduledTaskEntity> {
  UpdateBatchScheduledTasksUsecase(super.repository);
}
