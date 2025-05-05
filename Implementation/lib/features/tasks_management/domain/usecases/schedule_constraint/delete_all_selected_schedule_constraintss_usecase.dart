import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedScheduleConstraintsUsecase
    extends DeleteBatchUsecase<ScheduleConstraintRepository> {
  DeleteAllSelectedScheduleConstraintsUsecase(super.repository);
}
