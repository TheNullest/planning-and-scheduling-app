import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteTaskActivityUsecase extends DeleteUsecase<TaskActivityRepository> {
  DeleteTaskActivityUsecase(super.repository);
}
