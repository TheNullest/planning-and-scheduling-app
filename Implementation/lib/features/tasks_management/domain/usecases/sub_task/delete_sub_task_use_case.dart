import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteSubTaskUseCase extends DeleteUseCase<SubTaskRepository> {
  DeleteSubTaskUseCase(super.repository);
}
