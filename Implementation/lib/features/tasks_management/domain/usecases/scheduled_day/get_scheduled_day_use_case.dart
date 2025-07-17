import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/useCases/fetch_by_id_use_case.dart';

class GetScheduledDayUseCase extends FetchByIdUseCase<ScheduledDayRepository, ScheduledDayEntity> {
  GetScheduledDayUseCase(super.repository);
}
