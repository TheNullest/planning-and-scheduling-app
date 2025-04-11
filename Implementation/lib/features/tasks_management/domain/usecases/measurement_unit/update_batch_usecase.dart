import 'package:zamaan/domain/entities/measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchMeasurementUnitsUsecase
    extends UpdateBatchUsecase<MeasurementUnitRepository, MeasurementUnitEntity> {
  UpdateBatchMeasurementUnitsUsecase(super.repository);
}
