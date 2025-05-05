import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateScheduledIntervalUsecase extends UpdateUsecase<ScheduledIntervalEntity, ScheduledIntervalRepository> {
  UpdateScheduledIntervalUsecase(super.repository);
}
