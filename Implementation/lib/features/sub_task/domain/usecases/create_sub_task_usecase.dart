import 'package:zamaan/core/usecases/create_entity_usecase.dart';
import 'package:zamaan/features/sub_task/domain/entities/sub_task_entity.dart';
import 'package:zamaan/features/sub_task/domain/repositories/sub_task_repository.dart';

class CreateSubTaskUsecase
    extends CreateEntityUseCase<SubTaskRepository, SubTaskEntity> {
  CreateSubTaskUsecase(super.repository);
}
