import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateScheduledDayTimeUseCase extends CreateUseCase<ScheduledDayTimeRepository, ScheduledDayTimeEntity> {
  CreateScheduledDayTimeUseCase(super.repository);
}
