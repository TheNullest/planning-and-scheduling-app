import 'package:zamaan/domain/entities/sub_task_entity.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/update_entity_usecase.dart';

class UpdateSubTaskUsecase
    extends UpdateEntityUseCase<SubTaskEntity, SubTaskRepository> {
  UpdateSubTaskUsecase(super.repository);
}
