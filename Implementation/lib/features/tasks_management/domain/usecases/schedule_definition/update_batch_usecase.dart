import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchScheduleDefinitionsUsecase
    extends UpdateBatchUsecase<ScheduleDefinitionRepository, ScheduleDefinitionEntity> {
  UpdateBatchScheduleDefinitionsUsecase(super.repository);
}
