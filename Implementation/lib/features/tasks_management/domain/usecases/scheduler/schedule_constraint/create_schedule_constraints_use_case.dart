import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateScheduleConstraintsUseCase
    extends CreateUseCase<ScheduleConstraintsRepository, ScheduleConstraintsEntity> {
  CreateScheduleConstraintsUseCase(super.repository);
}
