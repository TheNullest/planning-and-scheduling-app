import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteMeasurementUnitUsecase extends DeleteUsecase<MeasurementUnitRepository> {
  DeleteMeasurementUnitUsecase(super.repository);
}
