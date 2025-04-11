import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetTaskSchedulersUsecase extends GetAllUsecase<TaskSchedulerRepository, TaskSchedulerEntity> {
  GetTaskSchedulersUsecase(super.repository);
}
