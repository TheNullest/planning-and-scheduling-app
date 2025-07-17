import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateSubTaskUseCase extends UpdateUseCase<SubTaskEntity, SubTaskRepository> {
  UpdateSubTaskUseCase(super.repository);
}
