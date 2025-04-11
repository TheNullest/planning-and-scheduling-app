import 'package:zamaan/domain/entities/measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetMeasurementUnitUsecase
    extends GetByIdUsecase<MeasurementUnitRepository, MeasurementUnitEntity> {
  GetMeasurementUnitUsecase(super.repository);
}
