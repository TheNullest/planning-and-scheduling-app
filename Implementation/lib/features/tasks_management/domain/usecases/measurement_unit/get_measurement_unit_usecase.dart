import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetCustomeMeasurementUnitUsecase
    extends GetByIdUsecase<CustomeMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  GetCustomeMeasurementUnitUsecase(super.repository);
}
