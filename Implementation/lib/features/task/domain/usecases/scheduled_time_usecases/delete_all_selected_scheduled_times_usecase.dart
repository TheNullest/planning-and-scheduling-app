import 'package:zamaan/core/usecases/delete_entities_usecase.dart';
import 'package:zamaan/features/task/domain/repositories/scheduled_time_repository.dart';

class DeleteAllSelectedScheduledTimesUsecase
    extends DeleteEntitiesUseCase<ScheduledTimeRepository> {
  DeleteAllSelectedScheduledTimesUsecase(super.repository);
}