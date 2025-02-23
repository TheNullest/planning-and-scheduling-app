import 'package:zamaan/core/usecases/update_entity_usecase.dart';
import 'package:zamaan/features/sub_task/domain/entities/sub_task_entity.dart';
import 'package:zamaan/features/sub_task/domain/repositories/sub_task_repository.dart';

class UpdateSubTaskUsecase
    extends UpdateEntityUseCase<SubTaskEntity, SubTaskRepository> {
  UpdateSubTaskUsecase(super.repository);
}
