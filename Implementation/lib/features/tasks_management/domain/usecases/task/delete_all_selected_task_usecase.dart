import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedTasksUsecase extends DeleteBatchUsecase<TaskRepository> {
  DeleteAllSelectedTasksUsecase(super.repository);
}
