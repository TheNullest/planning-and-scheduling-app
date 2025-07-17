import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchScheduledDaysUseCase
    extends UpdateBatchUseCase<ScheduledDayRepository, ScheduledDayEntity> {
  UpdateBatchScheduledDaysUseCase(super.repository);
}
