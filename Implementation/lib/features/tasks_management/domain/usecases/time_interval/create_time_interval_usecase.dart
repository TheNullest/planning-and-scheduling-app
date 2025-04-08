import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/create_entity_usecase.dart';

class CreateTaskActivityUsecase
    extends CreateEntityUseCase<TaskActivityRepository, TaskActivityEntity> {
  CreateTaskActivityUsecase(super.repository);
}
