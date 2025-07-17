import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class GetSelectedScheduledDayUseCase
    extends FetchBatchByIdsUseCase<ScheduledDayRepository, ScheduledDayEntity> {
  GetSelectedScheduledDayUseCase(super.repository);
}
