import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchScheduleDefinitionsUsecase
    extends CreateBatchUsecase<ScheduleDefinitionRepository, ScheduleDefinitionEntity> {
  CreateBatchScheduleDefinitionsUsecase(super.repository);
}
