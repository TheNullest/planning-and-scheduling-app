import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteScheduledDayTimeUseCase extends DeleteUseCase<ScheduledDayTimeRepository> {
  DeleteScheduledDayTimeUseCase(super.repository);
}
