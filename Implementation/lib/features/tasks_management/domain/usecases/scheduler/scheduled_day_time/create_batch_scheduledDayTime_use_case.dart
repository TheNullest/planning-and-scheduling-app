import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchScheduledDayTimesUseCase
    extends CreateBatchUseCase<ScheduledDayTimeRepository, ScheduledDayTimeEntity> {
  CreateBatchScheduledDayTimesUseCase(super.repository);
}
