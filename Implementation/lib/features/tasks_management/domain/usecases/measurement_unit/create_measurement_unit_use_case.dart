import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateCustomeMeasurementUnitUseCase
    extends CreateUseCase<CustomMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  CreateCustomeMeasurementUnitUseCase(super.repository);
}
