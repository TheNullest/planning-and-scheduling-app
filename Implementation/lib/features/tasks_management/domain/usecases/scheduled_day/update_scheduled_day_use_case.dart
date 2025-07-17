import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateScheduledDayUseCase extends UpdateUseCase<ScheduledDayEntity, ScheduledDayRepository> {
  UpdateScheduledDayUseCase(super.repository);
}
