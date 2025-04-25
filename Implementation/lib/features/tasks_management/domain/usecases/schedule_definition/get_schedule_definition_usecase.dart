import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetScheduleDefinitionUsecase extends GetByIdUsecase<ScheduleDefinitionRepository, ScheduleDefinitionEntity> {
  GetScheduleDefinitionUsecase(super.repository);
}
