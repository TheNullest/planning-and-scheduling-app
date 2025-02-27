import 'package:zamaan/domain/usecases/delete_entities_usecase.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';

class DeleteAllSelectedSubTasksUsecase
    extends DeleteEntitiesUseCase<SubTaskRepository> {
  DeleteAllSelectedSubTasksUsecase(super.repository);
}
