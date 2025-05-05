import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedScheduledDayUsecase
    extends GetByIdsUsecase<ScheduledDayRepository, ScheduledDayEntity> {
  GetSelectedScheduledDayUsecase(super.repository);
}
