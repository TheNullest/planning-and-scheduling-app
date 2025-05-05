import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateScheduledDayUsecase extends UpdateUsecase<ScheduledDayEntity, ScheduledDayRepository> {
  UpdateScheduledDayUsecase(super.repository);
}
