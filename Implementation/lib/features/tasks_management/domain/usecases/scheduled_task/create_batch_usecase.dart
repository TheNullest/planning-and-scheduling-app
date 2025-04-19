import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchScheduledTasksUsecase
    extends CreateBatchUsecase<ScheduledTaskRepository, ScheduledTaskEntity> {
  CreateBatchScheduledTasksUsecase(super.repository);
}
