import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedMeasurementUnitsUsecase
    extends DeleteBatchUsecase<MeasurementUnitRepository> {
  DeleteAllSelectedMeasurementUnitsUsecase(super.repository);
}
