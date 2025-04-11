import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedTaskActivitysUsecase extends DeleteBatchUsecase<TaskActivityRepository> {
  DeleteAllSelectedTaskActivitysUsecase(super.repository);
}
