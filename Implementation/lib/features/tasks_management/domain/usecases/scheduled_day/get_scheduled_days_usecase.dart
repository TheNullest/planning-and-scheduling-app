import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetScheduledDaysUsecase
    extends GetAllUsecase<ScheduledDayRepository, ScheduledDayEntity> {
  GetScheduledDaysUsecase(super.repository);
}
