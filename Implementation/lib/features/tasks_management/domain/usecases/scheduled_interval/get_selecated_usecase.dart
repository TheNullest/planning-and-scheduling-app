import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedScheduledIntervalUsecase
    extends GetByIdsUsecase<ScheduledIntervalRepository, ScheduledIntervalEntity> {
  GetSelectedScheduledIntervalUsecase(super.repository);
}
