import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteScheduleConstraintUsecase extends DeleteUsecase<ScheduleConstraintRepository> {
  DeleteScheduleConstraintUsecase(super.repository);
}
