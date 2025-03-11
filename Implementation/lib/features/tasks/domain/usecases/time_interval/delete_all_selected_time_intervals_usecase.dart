import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/delete_entities_usecase.dart';

class DeleteAllSelectedTimeIntervalsUsecase
    extends DeleteEntitiesUseCase<TimeIntervalRepository> {
  DeleteAllSelectedTimeIntervalsUsecase(super.repository);
}
