import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchScheduledIntervalUsecase
    extends CreateBatchUsecase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  CreateBatchScheduledIntervalUsecase(super.repository);
}
