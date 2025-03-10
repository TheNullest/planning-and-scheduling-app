import 'package:zamaan/domain/entities/time_interval_entity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/create_entity_usecase.dart';

class CreateTimeIntervalUsecase
    extends CreateEntityUseCase<TimeIntervalRepository, TimeIntervalEntity> {
  CreateTimeIntervalUsecase(super.repository);
}
