
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchSubTasksUsecase extends CreateBatchUsecase<SubTaskRepository, SubTaskEntity> {
  CreateBatchSubTasksUsecase(super.repository);
}
