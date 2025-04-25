import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteScheduleDefinitionUsecase extends DeleteUsecase<ScheduleDefinitionRepository> {
  DeleteScheduleDefinitionUsecase(super.repository);
}
