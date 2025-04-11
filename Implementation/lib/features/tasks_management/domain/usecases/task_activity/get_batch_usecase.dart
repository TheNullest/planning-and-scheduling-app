import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetTaskActivitysUsecase extends GetAllUsecase<TaskActivityRepository, TaskActivityEntity> {
  GetTaskActivitysUsecase(super.repository);
}
