import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetSelectedScheduledIntervalUseCase
    extends GetBatchByIdsUseCase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  GetSelectedScheduledIntervalUseCase(super.repository);
}
