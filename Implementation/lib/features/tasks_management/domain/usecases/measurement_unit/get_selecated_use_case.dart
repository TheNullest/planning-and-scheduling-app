import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetSelectedCustomeMeasurementUnitsUseCase
    extends GetBatchByIdsUseCase<CustomMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  GetSelectedCustomeMeasurementUnitsUseCase(super.repository);
}
