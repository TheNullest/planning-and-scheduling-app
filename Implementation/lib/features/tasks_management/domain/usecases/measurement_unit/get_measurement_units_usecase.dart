import 'package:zamaan/domain/entities/measurement_unit_entity.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/get_entities_usecase.dart';

class GetMeasurementUnitsUsecase extends GetEntitiesUseCase<
    MeasurementUnitRepository, MeasurementUnitEntity> {
  GetMeasurementUnitsUsecase(super.repository);
}
