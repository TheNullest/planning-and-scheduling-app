import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';

class DeleteTimeIntervalUsecase
    extends DeleteEntityUseCase<TimeIntervalRepository> {
  DeleteTimeIntervalUsecase(super.repository);
}
