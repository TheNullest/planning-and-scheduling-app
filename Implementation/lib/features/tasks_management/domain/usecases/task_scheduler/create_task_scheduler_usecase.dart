import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateTaskSchedulerUsecase
    extends CreateUsecase<TaskSchedulerRepository, TaskSchedulerEntity> {
  CreateTaskSchedulerUsecase(super.repository);
}
