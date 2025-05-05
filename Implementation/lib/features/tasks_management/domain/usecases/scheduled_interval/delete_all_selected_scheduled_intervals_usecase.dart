import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedScheduledIntervalsUsecase extends DeleteBatchUsecase<ScheduledIntervalRepository> {
  DeleteAllSelectedScheduledIntervalsUsecase(super.repository);
}
