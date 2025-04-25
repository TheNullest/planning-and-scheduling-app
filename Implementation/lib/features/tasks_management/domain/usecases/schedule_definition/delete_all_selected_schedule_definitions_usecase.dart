import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedScheduleDefinitionsUsecase extends DeleteBatchUsecase<ScheduleDefinitionRepository> {
  DeleteAllSelectedScheduleDefinitionsUsecase(super.repository);
}
