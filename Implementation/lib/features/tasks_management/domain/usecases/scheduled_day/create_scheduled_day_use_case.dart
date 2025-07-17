import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateScheduledDayUseCase extends CreateUseCase<ScheduledDayRepository, ScheduledDayEntity> {
  CreateScheduledDayUseCase(super.repository);
}
