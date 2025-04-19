import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedScheduledTasksUsecase extends DeleteBatchUsecase<ScheduledTaskRepository> {
  DeleteAllSelectedScheduledTasksUsecase(super.repository);
}
