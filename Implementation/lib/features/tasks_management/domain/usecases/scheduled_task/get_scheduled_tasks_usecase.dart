import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetScheduledTasksUsecase extends GetAllUsecase<ScheduledTaskRepository, ScheduledTaskEntity> {
  GetScheduledTasksUsecase(super.repository);
}
