import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedTaskSchedulerUsecase
    extends GetByIdsUsecase<TaskSchedulerRepository, TaskSchedulerEntity> {
  GetSelectedTaskSchedulerUsecase(super.repository);
}
