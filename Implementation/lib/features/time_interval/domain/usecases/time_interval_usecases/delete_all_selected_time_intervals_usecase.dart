import 'package:zamaan/core/usecases/delete_entities_usecase.dart';
import 'package:zamaan/features/time_interval/domain/repositories/time_interval_repository.dart';

class DeleteAllSelectedTimeIntervalsUsecase
    extends DeleteEntitiesUseCase<TimeIntervalRepository> {
  DeleteAllSelectedTimeIntervalsUsecase(super.repository);
}
