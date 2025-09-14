import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateScheduledDayTimesUseCase
    extends UpdateUseCase<ScheduledDayTimeRepository, ScheduledDayTimeEntity> {
  UpdateScheduledDayTimesUseCase(super.repository);
}
