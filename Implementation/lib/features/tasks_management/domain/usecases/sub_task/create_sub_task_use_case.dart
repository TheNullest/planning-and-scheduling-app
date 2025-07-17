import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateSubTaskUseCase extends CreateUseCase<SubTaskRepository, SubTaskEntity> {
  CreateSubTaskUseCase(super.repository);
}
