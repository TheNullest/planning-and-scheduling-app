import 'package:zamaan/domain/entities/measurement_unit_entity.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/update_entity_usecase.dart';

class UpdateMeasurementUnitUsecase extends UpdateEntityUseCase<
    MeasurementUnitEntity, MeasurementUnitRepository> {
  UpdateMeasurementUnitUsecase(super.repository);
}
