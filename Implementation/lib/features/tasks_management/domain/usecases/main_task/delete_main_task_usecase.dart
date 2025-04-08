import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';

class DeleteTaskUseCase extends DeleteEntityUseCase<TaskRepository> {
  DeleteTaskUseCase(super.repository);
}
