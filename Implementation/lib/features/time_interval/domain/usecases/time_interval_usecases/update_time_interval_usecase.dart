import 'package:zamaan/core/usecases/update_entity_usecase.dart';
import 'package:zamaan/features/time_interval/domain/entities/time_interval_entity.dart';
import 'package:zamaan/features/time_interval/domain/repositories/time_interval_repository.dart';

class UpdateTimeIntervalUsecase
    extends UpdateEntityUseCase<TimeIntervalEntity, TimeIntervalRepository> {
  UpdateTimeIntervalUsecase(super.repository);
}
