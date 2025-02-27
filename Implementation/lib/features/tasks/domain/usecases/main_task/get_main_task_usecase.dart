import 'package:zamaan/domain/usecases/get_entity_usecase.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';

class GetMainTaskUsecase
    extends GetEntityUseCase<MainTaskRepository, MainTaskEntity> {
  GetMainTaskUsecase(super.repository);
}
