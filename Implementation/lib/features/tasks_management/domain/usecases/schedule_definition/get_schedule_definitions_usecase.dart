import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetScheduleDefinitionsUsecase extends GetAllUsecase<ScheduleDefinitionRepository, ScheduleDefinitionEntity> {
  GetScheduleDefinitionsUsecase(super.repository);
}
