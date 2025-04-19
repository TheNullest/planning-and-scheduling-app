import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedScheduledTaskUsecase
    extends GetByIdsUsecase<ScheduledTaskRepository, ScheduledTaskEntity> {
  GetSelectedScheduledTaskUsecase(super.repository);
}
