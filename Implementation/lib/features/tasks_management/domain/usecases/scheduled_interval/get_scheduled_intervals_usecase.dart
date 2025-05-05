import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetScheduledIntervalsUsecase
    extends GetAllUsecase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  GetScheduledIntervalsUsecase(super.repository);
}
