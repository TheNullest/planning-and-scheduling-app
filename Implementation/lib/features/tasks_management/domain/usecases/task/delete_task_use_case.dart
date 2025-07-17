import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteTaskUseCase extends DeleteUseCase<TaskRepository> {
  DeleteTaskUseCase(super.repository);
}
