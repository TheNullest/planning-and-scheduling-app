import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteAllSelectedScheduledDaysUseCase extends DeleteBatchUseCase<ScheduledDayRepository> {
  DeleteAllSelectedScheduledDaysUseCase(super.repository);
}
