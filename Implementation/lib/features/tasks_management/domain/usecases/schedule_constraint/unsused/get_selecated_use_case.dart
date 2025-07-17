import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class GetSelectedScheduleConstraintUseCase
    extends FetchBatchByIdsUseCase<ScheduleConstraintsRepository, ScheduleConstraintsEntity> {
  GetSelectedScheduleConstraintUseCase(super.repository);
}
