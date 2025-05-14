import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteTaskUsecase extends DeleteUsecase<TaskRepository> {
  DeleteTaskUsecase(super.repository);
}
