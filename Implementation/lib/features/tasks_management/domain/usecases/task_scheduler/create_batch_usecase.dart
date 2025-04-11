import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchTaskSchedulersUsecase
    extends CreateBatchUsecase<TaskSchedulerRepository, TaskSchedulerEntity> {
  CreateBatchTaskSchedulersUsecase(super.repository);
}
