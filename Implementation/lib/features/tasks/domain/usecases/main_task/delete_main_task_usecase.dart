import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';

class DeleteMainTaskUseCase extends DeleteEntityUseCase<MainTaskRepository> {
  DeleteMainTaskUseCase(super.repository);
}
