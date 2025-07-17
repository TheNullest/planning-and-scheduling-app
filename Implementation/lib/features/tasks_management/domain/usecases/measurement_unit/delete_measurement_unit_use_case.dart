import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteCustomeMeasurementUnitUseCase extends DeleteUseCase<CustomMeasurementUnitRepository> {
  DeleteCustomeMeasurementUnitUseCase(super.repository);
}
