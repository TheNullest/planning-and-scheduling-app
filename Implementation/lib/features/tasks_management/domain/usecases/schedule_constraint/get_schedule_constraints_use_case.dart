import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/fetch_by_id_use_case.dart';

class FetchScheduleConstraintUseCase
    extends FetchByIdUseCase<ScheduleConstraintsRepository, ScheduleConstraintsEntity> {
  FetchScheduleConstraintUseCase(super.repository);
}
