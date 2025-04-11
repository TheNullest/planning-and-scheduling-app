import 'package:zamaan/domain/entities/measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchMeasurementUnitsUsecase
    extends CreateBatchUsecase<MeasurementUnitRepository, MeasurementUnitEntity> {
  CreateBatchMeasurementUnitsUsecase(super.repository);
}
