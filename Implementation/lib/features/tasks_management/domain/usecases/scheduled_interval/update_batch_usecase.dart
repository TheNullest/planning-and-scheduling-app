import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchScheduledIntervalsUsecase
    extends UpdateBatchUsecase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  UpdateBatchScheduledIntervalsUsecase(super.repository);
}
