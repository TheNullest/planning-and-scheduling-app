import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateScheduledIntervalUseCase extends UpdateUseCase<ScheduledIntervalEntity, ScheduledIntervalRepository> {
  UpdateScheduledIntervalUseCase(super.repository);
}
