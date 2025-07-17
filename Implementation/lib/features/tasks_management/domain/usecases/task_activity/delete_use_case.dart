import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteTaskActivityUseCase extends DeleteUseCase<TaskActivityRepository> {
  DeleteTaskActivityUseCase(super.repository);
}
