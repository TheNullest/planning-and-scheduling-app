import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/get_by_id_use_case.dart';

class GetScheduleConstraintsUseCase
    extends GetByIdUseCase<ScheduleConstraintsRepository, ScheduleConstraintsEntity> {
  GetScheduleConstraintsUseCase(super.repository);
}
