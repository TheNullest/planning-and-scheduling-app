import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class GetScheduledDaysUseCase
    extends FetcBatchAllUseCase<ScheduledDayRepository, ScheduledDayEntity> {
  GetScheduledDaysUseCase(super.repository);
}
