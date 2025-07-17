import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteAllSelectedScheduleConstraintsUseCase
    extends DeleteBatchUseCase<ScheduleConstraintsRepository> {
  DeleteAllSelectedScheduleConstraintsUseCase(super.repository);
}
