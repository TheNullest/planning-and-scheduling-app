import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetCustomeMeasurementUnitsUsecase
    extends GetAllUsecase<CustomeMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  GetCustomeMeasurementUnitsUsecase(super.repository);
}
