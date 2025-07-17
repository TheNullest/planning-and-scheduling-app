import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class GetSelectedScheduledIntervalUseCase
    extends FetchBatchByIdsUseCase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  GetSelectedScheduledIntervalUseCase(super.repository);
}
