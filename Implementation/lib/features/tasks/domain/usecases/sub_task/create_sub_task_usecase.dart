import 'package:zamaan/domain/usecases/create_entity_usecase.dart';
import 'package:zamaan/domain/entities/sub_task_entity.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';

class CreateSubTaskUsecase
    extends CreateEntityUseCase<SubTaskRepository, SubTaskEntity> {
  CreateSubTaskUsecase(super.repository);
}
