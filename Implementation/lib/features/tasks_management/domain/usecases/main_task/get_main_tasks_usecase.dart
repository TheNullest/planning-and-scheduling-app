import 'package:zamaan/domain/entities/main_task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/get_entities_usecase.dart';

class GetMainTasksUsecase
    extends GetEntitiesUseCase<MainTaskRepository, MainTaskEntity> {
  GetMainTasksUsecase(super.repository);
}
