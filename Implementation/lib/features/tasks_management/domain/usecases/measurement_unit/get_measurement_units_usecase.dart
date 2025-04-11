import 'package:zamaan/domain/entities/measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetMeasurementUnitsUsecase
    extends GetAllUsecase<MeasurementUnitRepository, MeasurementUnitEntity> {
  GetMeasurementUnitsUsecase(super.repository);
}
