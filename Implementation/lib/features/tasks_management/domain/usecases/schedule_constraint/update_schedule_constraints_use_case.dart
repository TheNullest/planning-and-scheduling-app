import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateScheduleConstraintsUseCase
    extends UpdateUseCase<ScheduleConstraintsEntity, ScheduleConstraintsRepository> {
  UpdateScheduleConstraintsUseCase(super.repository);
}
