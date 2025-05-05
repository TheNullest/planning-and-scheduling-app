import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedScheduledDaysUsecase extends DeleteBatchUsecase<ScheduledDayRepository> {
  DeleteAllSelectedScheduledDaysUsecase(super.repository);
}
