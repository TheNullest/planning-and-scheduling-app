import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class FetchBatchScheduleCosntraintsListUseCase
    extends FetcBatchAllUseCase<ScheduleConstraintsRepository, ScheduleConstraintsEntity> {
  FetchBatchScheduleCosntraintsListUseCase(super.repository);
}
