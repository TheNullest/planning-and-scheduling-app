import 'package:zamaan/domain/usecases/delete_entities_usecase.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';

class DeleteAllSelectedMainTasksUsecase
    extends DeleteEntitiesUseCase<MainTaskRepository> {
  DeleteAllSelectedMainTasksUsecase(super.repository);
}
