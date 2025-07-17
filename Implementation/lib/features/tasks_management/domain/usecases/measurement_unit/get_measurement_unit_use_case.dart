import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/useCases/fetch_by_id_use_case.dart';

class GetCustomeMeasurementUnitUseCase
    extends FetchByIdUseCase<CustomMeasurementUnitRepository, CustomMeasurementUnitEntity> {
  GetCustomeMeasurementUnitUseCase(super.repository);
}
