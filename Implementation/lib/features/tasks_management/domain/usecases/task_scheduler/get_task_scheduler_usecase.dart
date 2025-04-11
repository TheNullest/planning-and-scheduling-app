import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetTaskSchedulerUsecase extends GetByIdUsecase<TaskSchedulerRepository, TaskSchedulerEntity> {
  GetTaskSchedulerUsecase(super.repository);
}
