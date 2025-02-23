import 'package:zamaan/core/usecases/delete_entities_usecase.dart';
import 'package:zamaan/features/task_scheduler/domain/repositories/task_scheduler_repository.dart';

class DeleteAllSelectedTaskSchedulersUsecase
    extends DeleteEntitiesUseCase<TaskSchedulerRepository> {
  DeleteAllSelectedTaskSchedulersUsecase(super.repository);
}
