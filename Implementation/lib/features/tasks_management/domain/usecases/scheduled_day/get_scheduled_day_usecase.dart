import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetScheduledDayUsecase extends GetByIdUsecase<ScheduledDayRepository, ScheduledDayEntity> {
  GetScheduledDayUsecase(super.repository);
}
