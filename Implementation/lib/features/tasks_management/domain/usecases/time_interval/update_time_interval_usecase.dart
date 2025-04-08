import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/update_entity_usecase.dart';

class UpdateTaskActivityUsecase
    extends UpdateEntityUseCase<TaskActivityEntity, TaskActivityRepository> {
  UpdateTaskActivityUsecase(super.repository);
}
