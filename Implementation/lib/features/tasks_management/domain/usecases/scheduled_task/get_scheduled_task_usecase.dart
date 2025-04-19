import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetScheduledTaskUsecase extends GetByIdUsecase<ScheduledTaskRepository, ScheduledTaskEntity> {
  GetScheduledTaskUsecase(super.repository);
}
