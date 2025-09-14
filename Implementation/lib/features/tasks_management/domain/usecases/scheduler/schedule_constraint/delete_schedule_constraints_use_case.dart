import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteScheduleConstraintsUseCase extends DeleteUseCase<ScheduleConstraintsRepository> {
  DeleteScheduleConstraintsUseCase(super.repository);
}
