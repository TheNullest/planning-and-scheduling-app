import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedSubTasksUsecase extends GetByIdsUsecase<SubTaskRepository, SubTaskEntity> {
  GetSelectedSubTasksUsecase(super.repository);
}
