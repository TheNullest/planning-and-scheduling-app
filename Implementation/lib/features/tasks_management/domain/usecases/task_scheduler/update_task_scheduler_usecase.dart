import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateTaskSchedulerUsecase
    extends UpdateUsecase<TaskSchedulerEntity, TaskSchedulerRepository> {
  UpdateTaskSchedulerUsecase(super.repository);
}
