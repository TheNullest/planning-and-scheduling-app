import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/get_entities_usecase.dart';

class GetTaskActivitysUsecase
    extends GetEntitiesUseCase<TaskActivityRepository, TaskActivityEntity> {
  GetTaskActivitysUsecase(super.repository);
}
