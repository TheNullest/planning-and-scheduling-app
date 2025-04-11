import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchTaskSchedulersUsecase
    extends UpdateBatchUsecase<TaskSchedulerRepository, TaskSchedulerEntity> {
  UpdateBatchTaskSchedulersUsecase(super.repository);
}
