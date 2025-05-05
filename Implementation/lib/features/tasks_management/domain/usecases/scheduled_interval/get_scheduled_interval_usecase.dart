import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetScheduledIntervalUsecase extends GetByIdUsecase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  GetScheduledIntervalUsecase(super.repository);
}
