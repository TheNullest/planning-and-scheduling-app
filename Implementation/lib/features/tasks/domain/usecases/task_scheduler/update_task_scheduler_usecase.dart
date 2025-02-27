import 'package:zamaan/domain/usecases/update_entity_usecase.dart';
import 'package:zamaan/domain/entities/task_scheduler_entity.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';

class UpdateTaskSchedulerUsecase
    extends UpdateEntityUseCase<TaskSchedulerEntity, TaskSchedulerRepository> {
  UpdateTaskSchedulerUsecase(super.repository);
}
