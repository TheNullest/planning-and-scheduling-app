import 'package:zamaan/domain/entities/main_task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/create_entity_usecase.dart';

class CreateMainTaskUseCase
    extends CreateEntityUseCase<MainTaskRepository, MainTaskEntity> {
  CreateMainTaskUseCase(super.repository);
}
