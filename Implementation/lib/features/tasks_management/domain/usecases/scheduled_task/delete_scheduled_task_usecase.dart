import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteScheduledTaskUsecase extends DeleteUsecase<ScheduledTaskRepository> {
  DeleteScheduledTaskUsecase(super.repository);
}
