import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/domain/useCases/get_use_case.dart';

class GetScheduledDayTimesUseCase
    extends FetcBatchAllUseCase<ScheduledDayTimeRepository, ScheduledDayTimeEntity> {
  GetScheduledDayTimesUseCase(super.repository);
}
