import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateTaskActivityUseCase extends UpdateUseCase<TaskActivityEntity, TaskActivityRepository> {
  UpdateTaskActivityUseCase(super.repository);
}
