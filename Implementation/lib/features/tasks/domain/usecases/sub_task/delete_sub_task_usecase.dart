import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';

class DeleteSubTaskUsecase extends DeleteEntityUseCase<SubTaskRepository> {
  DeleteSubTaskUsecase(super.repository);
}
