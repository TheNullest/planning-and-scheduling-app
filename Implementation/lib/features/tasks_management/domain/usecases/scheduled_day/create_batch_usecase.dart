import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchScheduledDayUsecase
    extends CreateBatchUsecase<ScheduledDayRepository, ScheduledDayEntity> {
  CreateBatchScheduledDayUsecase(super.repository);
}
