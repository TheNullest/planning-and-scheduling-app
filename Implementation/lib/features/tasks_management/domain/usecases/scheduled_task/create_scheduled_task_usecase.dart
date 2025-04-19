import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateScheduledTaskUsecase
    extends CreateUsecase<ScheduledTaskRepository, ScheduledTaskEntity> {
  CreateScheduledTaskUsecase(super.repository);
}
