import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteScheduledDayUseCase extends DeleteUseCase<ScheduledDayRepository> {
  DeleteScheduledDayUseCase(super.repository);
}
