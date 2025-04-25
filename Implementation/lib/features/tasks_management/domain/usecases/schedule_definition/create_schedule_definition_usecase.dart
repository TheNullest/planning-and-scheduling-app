import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateScheduleDefinitionUsecase
    extends CreateUsecase<ScheduleDefinitionRepository, ScheduleDefinitionEntity> {
  CreateScheduleDefinitionUsecase(super.repository);
}
