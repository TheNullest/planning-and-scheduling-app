import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteTaskUseCase extends DeleteUsecase<TaskRepository> {
  DeleteTaskUseCase(super.repository);
}
