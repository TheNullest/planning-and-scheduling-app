import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/get_use_case.dart';

class GetScheduledIntervalsUseCase
    extends FetcBatchAllUseCase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  GetScheduledIntervalsUseCase(super.repository);
}
