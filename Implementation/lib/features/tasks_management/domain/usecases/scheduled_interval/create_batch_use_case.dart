import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchScheduledIntervalUseCase
    extends CreateBatchUseCase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  CreateBatchScheduledIntervalUseCase(super.repository);
}
