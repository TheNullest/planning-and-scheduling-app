import 'package:zamaan/domain/usecases/update_entity_usecase.dart';
import 'package:zamaan/domain/entities/time_interval_entity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';

class UpdateTimeIntervalUsecase
    extends UpdateEntityUseCase<TimeIntervalEntity, TimeIntervalRepository> {
  UpdateTimeIntervalUsecase(super.repository);
}
