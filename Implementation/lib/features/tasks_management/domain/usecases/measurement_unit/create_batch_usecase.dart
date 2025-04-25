import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchCustomeMeasurementUnitsUsecase
    extends CreateBatchUsecase<CustomeMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  CreateBatchCustomeMeasurementUnitsUsecase(super.repository);
}
