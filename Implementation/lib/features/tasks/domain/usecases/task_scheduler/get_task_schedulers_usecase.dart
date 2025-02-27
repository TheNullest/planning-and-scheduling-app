import 'package:zamaan/domain/usecases/get_entities_usecase.dart';
import 'package:zamaan/domain/entities/task_scheduler_entity.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';

class GetTaskSchedulersUsecase
    extends GetEntitiesUseCase<TaskSchedulerRepository, TaskSchedulerEntity> {
  GetTaskSchedulersUsecase(super.repository);
}
