import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateScheduledDayUsecase extends CreateUsecase<ScheduledDayRepository, ScheduledDayEntity> {
  CreateScheduledDayUsecase(super.repository);
}
