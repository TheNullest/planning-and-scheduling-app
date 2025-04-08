import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';

class DeleteTaskActivityUsecase
    extends DeleteEntityUseCase<TaskActivityRepository> {
  DeleteTaskActivityUsecase(super.repository);
}
