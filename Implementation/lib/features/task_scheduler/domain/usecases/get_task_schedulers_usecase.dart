import 'package:zamaan/core/usecases/get_entities_usecase.dart';
import 'package:zamaan/features/task_scheduler/domain/entities/task_scheduler_entity.dart';
import 'package:zamaan/features/task_scheduler/domain/repositories/task_scheduler_repository.dart';

class GetTaskSchedulersUsecase
    extends GetEntitiesUseCase<TaskSchedulerRepository, TaskSchedulerEntity> {
  GetTaskSchedulersUsecase(super.repository);
}
