import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedScheduleDefinitionUsecase
    extends GetByIdsUsecase<ScheduleDefinitionRepository, ScheduleDefinitionEntity> {
  GetSelectedScheduleDefinitionUsecase(super.repository);
}
