import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/get_entity_usecase.dart';

class GetTaskActivityUsecase
    extends GetEntityUseCase<TaskActivityRepository, TaskActivityEntity> {
  GetTaskActivityUsecase(super.repository);
}
