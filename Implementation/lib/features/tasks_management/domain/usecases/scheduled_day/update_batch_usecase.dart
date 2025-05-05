import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchScheduledDaysUsecase
    extends UpdateBatchUsecase<ScheduledDayRepository, ScheduledDayEntity> {
  UpdateBatchScheduledDaysUsecase(super.repository);
}
