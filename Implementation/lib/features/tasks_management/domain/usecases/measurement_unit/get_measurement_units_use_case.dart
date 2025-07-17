import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class GetCustomeMeasurementUnitsUseCase
    extends FetcBatchAllUseCase<CustomMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  GetCustomeMeasurementUnitsUseCase(super.repository);
}
