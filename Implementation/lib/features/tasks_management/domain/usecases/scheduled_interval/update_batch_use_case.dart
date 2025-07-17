import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchScheduledIntervalsUseCase
    extends UpdateBatchUseCase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  UpdateBatchScheduledIntervalsUseCase(super.repository);
}
