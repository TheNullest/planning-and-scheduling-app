import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/domain/usecases/delete_entities_usecase.dart';

class DeleteAllSelectedMeasurementUnitsUsecase
    extends DeleteEntitiesUseCase<MeasurementUnitRepository> {
  DeleteAllSelectedMeasurementUnitsUsecase(super.repository);
}
