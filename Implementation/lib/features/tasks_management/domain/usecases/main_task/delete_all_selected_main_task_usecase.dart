import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/delete_entities_usecase.dart';

class DeleteAllSelectedTasksUsecase
    extends DeleteEntitiesUseCase<TaskRepository> {
  DeleteAllSelectedTasksUsecase(super.repository);
}
