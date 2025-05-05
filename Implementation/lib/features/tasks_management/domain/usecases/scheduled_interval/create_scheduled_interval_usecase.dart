import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateScheduledIntervalUsecase extends CreateUsecase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  CreateScheduledIntervalUsecase(super.repository);
}
