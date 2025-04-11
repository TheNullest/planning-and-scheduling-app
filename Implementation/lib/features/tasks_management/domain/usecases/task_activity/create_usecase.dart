import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateTaskActivityUsecase extends CreateUsecase<TaskActivityRepository, TaskActivityEntity> {
  CreateTaskActivityUsecase(super.repository);
}
