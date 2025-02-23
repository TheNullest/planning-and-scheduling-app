import 'package:zamaan/core/usecases/create_entity_usecase.dart';
import 'package:zamaan/features/task_scheduler/domain/entities/task_scheduler_entity.dart';
import 'package:zamaan/features/task_scheduler/domain/repositories/task_scheduler_repository.dart';

class CreateTaskSchedulerUsecase
    extends CreateEntityUseCase<TaskSchedulerRepository, TaskSchedulerEntity> {
  CreateTaskSchedulerUsecase(super.repository);
}
