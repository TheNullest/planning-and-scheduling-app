import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchCustomeMeasurementUnitsUseCase
    extends CreateBatchUseCase<CustomMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  CreateBatchCustomeMeasurementUnitsUseCase(super.repository);
}
