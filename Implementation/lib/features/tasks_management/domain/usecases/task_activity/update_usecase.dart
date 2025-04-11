import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateTaskActivityUsecase extends UpdateUsecase<TaskActivityEntity, TaskActivityRepository> {
  UpdateTaskActivityUsecase(super.repository);
}
