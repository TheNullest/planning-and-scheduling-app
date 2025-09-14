import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateScheduledDayTimeUseCase extends UpdateUseCase<ScheduledDayTimeEntity, ScheduledDayTimeRepository> {
  UpdateScheduledDayTimeUseCase(super.repository);
}
