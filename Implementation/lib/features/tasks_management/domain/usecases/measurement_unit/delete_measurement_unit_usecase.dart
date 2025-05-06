import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteCustomeMeasurementUnitUsecase extends DeleteUsecase<CustomMeasurementUnitRepository> {
  DeleteCustomeMeasurementUnitUsecase(super.repository);
}
