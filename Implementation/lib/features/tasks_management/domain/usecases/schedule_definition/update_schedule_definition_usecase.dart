import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateScheduleDefinitionUsecase
    extends UpdateUsecase<ScheduleDefinitionEntity, ScheduleDefinitionRepository> {
  UpdateScheduleDefinitionUsecase(super.repository);
}
