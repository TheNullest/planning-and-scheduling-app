import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/delete_entities_usecase.dart';

class DeleteAllSelectedTaskSchedulersUsecase
    extends DeleteEntitiesUseCase<TaskSchedulerRepository> {
  DeleteAllSelectedTaskSchedulersUsecase(super.repository);
}
