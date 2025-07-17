import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchScheduledDayUseCase
    extends CreateBatchUseCase<ScheduledDayRepository, ScheduledDayEntity> {
  CreateBatchScheduledDayUseCase(super.repository);
}
