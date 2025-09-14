import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetSelectedScheduleConstraintUseCase
    extends GetBatchByIdsUseCase<ScheduleConstraintsRepository, ScheduleConstraintsEntity> {
  GetSelectedScheduleConstraintUseCase(super.repository);
}
