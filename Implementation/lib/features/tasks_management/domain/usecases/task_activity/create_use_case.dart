import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateTaskActivityUseCase extends CreateUseCase<TaskActivityRepository, TaskActivityEntity> {
  CreateTaskActivityUseCase(super.repository);
}
