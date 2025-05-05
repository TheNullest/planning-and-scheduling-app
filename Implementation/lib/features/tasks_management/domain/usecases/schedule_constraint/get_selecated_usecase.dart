import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedScheduleConstraintUsecase
    extends GetByIdsUsecase<ScheduleConstraintRepository, ScheduleConstraintEntity> {
  GetSelectedScheduleConstraintUsecase(super.repository);
}
