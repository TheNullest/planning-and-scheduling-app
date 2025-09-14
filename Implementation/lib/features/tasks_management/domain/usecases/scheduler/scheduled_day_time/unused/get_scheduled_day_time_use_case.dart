import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/domain/useCases/get_by_id_use_case.dart';

class GetScheduledDayTimeUseCase extends GetByIdUseCase<ScheduledDayTimeRepository, ScheduledDayTimeEntity> {
  GetScheduledDayTimeUseCase(super.repository);
}
