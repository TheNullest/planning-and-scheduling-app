import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchCustomeMeasurementUnitsUseCase
    extends UpdateBatchUseCase<CustomMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  UpdateBatchCustomeMeasurementUnitsUseCase(super.repository);
}
