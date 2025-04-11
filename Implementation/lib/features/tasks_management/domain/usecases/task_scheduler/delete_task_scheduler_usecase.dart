import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteTaskSchedulerUsecase extends DeleteUsecase<TaskSchedulerRepository> {
  DeleteTaskSchedulerUsecase(super.repository);
}
