import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateScheduledTaskUsecase
    extends UpdateUsecase<ScheduledTaskEntity, ScheduledTaskRepository> {
  UpdateScheduledTaskUsecase(super.repository);
}
