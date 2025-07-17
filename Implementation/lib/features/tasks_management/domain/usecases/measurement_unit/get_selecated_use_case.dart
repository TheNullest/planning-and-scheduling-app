import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class GetSelectedCustomeMeasurementUnitsUseCase
    extends FetchBatchByIdsUseCase<CustomMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  GetSelectedCustomeMeasurementUnitsUseCase(super.repository);
}
