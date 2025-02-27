import 'package:zamaan/domain/usecases/get_entity_usecase.dart';
import 'package:zamaan/domain/entities/time_interval_entity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';

class GetTimeIntervalUsecase
    extends GetEntityUseCase<TimeIntervalRepository, TimeIntervalEntity> {
  GetTimeIntervalUsecase(super.repository);
}
