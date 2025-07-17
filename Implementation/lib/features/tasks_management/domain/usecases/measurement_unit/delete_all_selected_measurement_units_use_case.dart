import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteAllSelectedCustomeMeasurementUnitsUseCase
    extends DeleteBatchUseCase<CustomMeasurementUnitRepository> {
  DeleteAllSelectedCustomeMeasurementUnitsUseCase(super.repository);
}
