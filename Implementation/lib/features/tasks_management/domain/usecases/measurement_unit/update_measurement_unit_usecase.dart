import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateCustomeMeasurementUnitUsecase
    extends UpdateUsecase<CustomMeasurementUnitEntity, CustomMeasurementUnitRepository> {
  UpdateCustomeMeasurementUnitUsecase(super.repository);
}
