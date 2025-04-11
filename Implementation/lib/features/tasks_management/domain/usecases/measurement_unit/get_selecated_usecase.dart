import 'package:zamaan/domain/entities/measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedMeasurementUnitsUsecase
    extends GetByIdsUsecase<MeasurementUnitRepository, MeasurementUnitEntity> {
  GetSelectedMeasurementUnitsUsecase(super.repository);
}
