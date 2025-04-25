import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedCustomeMeasurementUnitsUsecase
    extends DeleteBatchUsecase<CustomeMeasurementUnitRepository> {
  DeleteAllSelectedCustomeMeasurementUnitsUsecase(super.repository);
}
