import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetScheduleDefinitionsUsecase
    extends GetAllUsecase<ScheduleConstraintRepository, ScheduleConstraintEntity> {
  GetScheduleDefinitionsUsecase(super.repository);
}
