import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateScheduledIntervalUseCase extends CreateUseCase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  CreateScheduledIntervalUseCase(super.repository);
}
