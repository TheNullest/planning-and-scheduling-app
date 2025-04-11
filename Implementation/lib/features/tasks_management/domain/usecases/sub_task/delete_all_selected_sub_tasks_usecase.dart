import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedSubTasksUsecase extends DeleteBatchUsecase<SubTaskRepository> {
  DeleteAllSelectedSubTasksUsecase(super.repository);
}
