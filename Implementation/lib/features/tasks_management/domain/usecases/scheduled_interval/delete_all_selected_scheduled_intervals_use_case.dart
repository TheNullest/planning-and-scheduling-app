import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteAllSelectedScheduledIntervalsUseCase extends DeleteBatchUseCase<ScheduledIntervalRepository> {
  DeleteAllSelectedScheduledIntervalsUseCase(super.repository);
}
