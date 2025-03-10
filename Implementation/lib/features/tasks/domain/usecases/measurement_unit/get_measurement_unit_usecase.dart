import 'package:zamaan/domain/entities/measurement_unit_entity.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/get_entity_usecase.dart';

class GetMeasurementUnitUsecase
    extends GetEntityUseCase<MeasurementUnitRepository, MeasurementUnitEntity> {
  GetMeasurementUnitUsecase(super.repository);
}
