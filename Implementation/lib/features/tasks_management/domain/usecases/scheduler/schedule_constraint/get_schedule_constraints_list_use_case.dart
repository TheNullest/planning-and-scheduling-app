import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/get_use_case.dart';

class GetBatchScheduleCosntraintsListUseCase
    extends FetcBatchAllUseCase<ScheduleConstraintsRepository, ScheduleConstraintsEntity> {
  GetBatchScheduleCosntraintsListUseCase(super.repository);
}
