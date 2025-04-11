import 'package:zamaan/domain/entities/measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateMeasurementUnitUsecase
    extends CreateUsecase<MeasurementUnitRepository, MeasurementUnitEntity> {
  CreateMeasurementUnitUsecase(super.repository);
}
