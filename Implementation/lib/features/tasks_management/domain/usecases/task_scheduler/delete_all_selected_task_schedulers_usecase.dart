import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedTaskSchedulersUsecase extends DeleteBatchUsecase<TaskSchedulerRepository> {
  DeleteAllSelectedTaskSchedulersUsecase(super.repository);
}
