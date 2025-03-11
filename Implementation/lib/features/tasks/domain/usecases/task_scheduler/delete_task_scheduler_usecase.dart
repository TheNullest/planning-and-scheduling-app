import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';

class DeleteTaskSchedulerUsecase
    extends DeleteEntityUseCase<TaskSchedulerRepository> {
  DeleteTaskSchedulerUsecase(super.repository);
}
