import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetSubTasksUsecase extends GetAllUsecase<SubTaskRepository, SubTaskEntity> {
  GetSubTasksUsecase(super.repository);
}
