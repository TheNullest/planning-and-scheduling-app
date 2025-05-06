import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateCustomeMeasurementUnitUsecase
    extends CreateUsecase<CustomMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  CreateCustomeMeasurementUnitUsecase(super.repository);
}
