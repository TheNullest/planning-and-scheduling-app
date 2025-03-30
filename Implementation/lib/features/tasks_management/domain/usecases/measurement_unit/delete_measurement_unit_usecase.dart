import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';

class DeleteMeasurementUnitUsecase
    extends DeleteEntityUseCase<MeasurementUnitRepository> {
  DeleteMeasurementUnitUsecase(super.repository);
}
