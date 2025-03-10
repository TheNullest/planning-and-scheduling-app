import 'package:zamaan/domain/entities/measurement_unit_entity.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/create_entity_usecase.dart';

class CreateMeasurementUnitUsecase extends CreateEntityUseCase<
    MeasurementUnitRepository, MeasurementUnitEntity> {
  CreateMeasurementUnitUsecase(super.repository);
}
