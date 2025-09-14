import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteBatchScheduledDayTimesUseCase extends DeleteBatchUseCase<ScheduledDayTimeRepository> {
  DeleteBatchScheduledDayTimesUseCase(super.repository);
}
