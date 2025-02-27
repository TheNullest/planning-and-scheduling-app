import 'package:zamaan/domain/usecases/get_entities_usecase.dart';
import 'package:zamaan/domain/entities/sub_task_entity.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';

class GetSubTasksUsecase
    extends GetEntitiesUseCase<SubTaskRepository, SubTaskEntity> {
  GetSubTasksUsecase(super.repository);
}
