import 'package:zamaan/domain/entities/time_interval_entity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/get_entities_usecase.dart';

class GetTimeIntervalsUsecase
    extends GetEntitiesUseCase<TimeIntervalRepository, TimeIntervalEntity> {
  GetTimeIntervalsUsecase(super.repository);
}
