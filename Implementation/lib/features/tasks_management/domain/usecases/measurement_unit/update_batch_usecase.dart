import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchCustomeMeasurementUnitsUsecase
    extends UpdateBatchUsecase<CustomeMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  UpdateBatchCustomeMeasurementUnitsUsecase(super.repository);
}
