import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/get_by_id_use_case.dart';

class GetScheduledIntervalUseCase
    extends GetByIdUseCase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  GetScheduledIntervalUseCase(super.repository);
}
