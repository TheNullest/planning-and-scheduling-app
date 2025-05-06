import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedCustomeMeasurementUnitsUsecase
    extends GetByIdsUsecase<CustomMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  GetSelectedCustomeMeasurementUnitsUsecase(super.repository);
}
